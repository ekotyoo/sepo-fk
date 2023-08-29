import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fpdart/fpdart.dart';
import 'package:http_parser/http_parser.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../domain/auth_user.dart';
import '../../../common/error/network_exceptions.dart';
import '../../../common/services/auth_interceptor.dart';
import '../../../common/services/http_client.dart';
import '../../../common/error/failure.dart';
import 'i_auth_repository.dart';

part 'auth_repository.g.dart';

final authStateProvider =
    StateProvider<AuthUser>((ref) => const AuthUser.signedOut());

class UserUnverifiedException implements Exception {}

@riverpod
IAuthRepository authRepository(AuthRepositoryRef ref) {
  final client = ref.watch(httpClientProvider);
  return AuthRepository(client, ref);
}

class AuthRepository implements IAuthRepository {
  const AuthRepository(this._client, this.ref);

  final HttpClient _client;
  final AuthRepositoryRef ref;

  @override
  Future<Either<Failure, AuthUser>> login({
    required String email,
    required String password,
  }) async {
    try {
      final result = await _client.post('/auth/signin', data: {
        'email': email,
        'password': password,
      });
      final response = AuthUserWrapper.fromJson(result['data']);

      if (!response.isActive) {
        return left(
          Failure(
            'Email belum terverifikasi, silahkan verifikasi email terlebih dahulu',
            cause: UserUnverifiedException(),
          ),
        );
      }

      final user = AuthUser.signedIn(
        id: response.id,
        name: response.name,
        email: response.email,
        avatar: '${response.avatar}'.replaceAll('public', kBaseUrl),
        isAdmin: response.isAdmin,
        accessToken: response.accessToken,
      ) as SignedIn;

      final prefs = await SharedPreferences.getInstance();

      prefs.setString(kAccessToken, user.accessToken ?? '');

      ref.read(authStateProvider.notifier).state = user;
      return right(user);
    } catch (e) {
      final exception = NetworkExceptions.getDioException(e);
      return left(Failure(exception.getErrorMessage()));
    }
  }

  @override
  Future<Either<Failure, AuthUser>> loginWithToken() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final token = prefs.getString(kAccessToken);

      final result = await _client.post('/auth/signin/token');
      final response = AuthUserWrapper.fromJson(result['data']);
      final user = AuthUser.signedIn(
        id: response.id,
        name: response.name,
        email: response.email,
        isAdmin: response.isAdmin,
        avatar: '${response.avatar}'.replaceAll('public', kBaseUrl),
        accessToken: token,
      ) as SignedIn;

      ref.read(authStateProvider.notifier).state = user;
      return right(user);
    } catch (e) {
      final exception = NetworkExceptions.getDioException(e);
      return left(Failure(exception.getErrorMessage(), cause: exception));
    }
  }

  @override
  Future<Either<Failure, Unit>> logout() async {
    try {
      ref.read(authStateProvider.notifier).state = const AuthUser.signedOut();
      final prefs = await SharedPreferences.getInstance();
      prefs.remove(kAccessToken);

      return right(unit);
    } catch (e) {
      final exception = NetworkExceptions.getDioException(e);
      return left(Failure(exception.getErrorMessage()));
    }
  }

  @override
  Future<Either<Failure, Unit>> register({
    required String name,
    required String email,
    required String password,
  }) async {
    try {
      final response = await _client.post('/auth/signup', data: {
        'name': name,
        'email': email,
        'password': password,
        'confirm_password': password,
      });

      if (response['status'] == 'success') {
        return right(unit);
      }

      return left(const Failure('Terjadi kesalahan, coba lagi nanti'));
    } catch (e) {
      final exception = NetworkExceptions.getDioException(e);
      return left(Failure(exception.getErrorMessage()));
    }
  }

  @override
  Future<Either<Failure, Unit>> verifyEmail(
      {required String email, required String otp}) async {
    try {
      final response = await _client
          .post('/auth/verify', data: {'email': email, 'otp': otp});

      if (response['status'] == 'success') {
        return right(unit);
      }

      return left(const Failure('Terjadi kesalahan, coba lagi nanti'));
    } catch (e) {
      final exception = NetworkExceptions.getDioException(e);
      return left(Failure(exception.getErrorMessage()));
    }
  }

  @override
  Future<Either<Failure, AuthUser>> updateProfile({
    required int userId,
    String? name,
    bool? deleteOld,
    File? newAvatar,
  }) async {
    try {
      final formData = FormData.fromMap({
        'name': name,
        'delete_old': deleteOld,
      });

      if (newAvatar != null) {
        final path = newAvatar.path;
        final fileName = path.split('/').last;
        final extension = fileName.split('.').last;

        formData.files.add(
          MapEntry(
            'avatar',
            await MultipartFile.fromFile(
              path,
              filename: fileName,
              contentType:
              MediaType('image', extension == 'jpg' ? 'jpeg' : extension),
            ),
          ),
        );
      }

      final response = await _client.put(
        '/user/$userId',
        data: formData,
      );
      if (response['status'] == 'success' && response['data'] != null) {
        final newAuthUserWrapper = AuthUserWrapper.fromJson(response['data']);

        var currentAuthUser = ref.read(authStateProvider);

        if (currentAuthUser is SignedIn) {
          final newAuthUser = AuthUser.signedIn(
            id: newAuthUserWrapper.id,
            name: newAuthUserWrapper.name,
            email: newAuthUserWrapper.email,
            avatar: newAuthUserWrapper.avatar?.replaceAll('public', kBaseUrl),
            isAdmin: newAuthUserWrapper.isAdmin,
            accessToken: currentAuthUser.accessToken,
          );
          return right(newAuthUser);
        }
      }
      return left(const Failure('Terjadi kesalahan, coba lagi nanti'));
    } catch (e) {
      final exception = NetworkExceptions.getDioException(e);
      return left(Failure(exception.getErrorMessage()));
    }
  }
}
