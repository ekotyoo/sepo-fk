import 'dart:io';

import 'package:fpdart/fpdart.dart';

import '../../../common/error/failure.dart';
import '../domain/auth_user.dart';

abstract class IAuthRepository {
  Future<Either<Failure, AuthUser>> login({
    required String email,
    required String password,
  });

  Future<Either<Failure, AuthUser>> loginWithToken();

  Future<Either<Failure, Unit>> register({
    required String name,
    required String email,
    required String password,
  });

  Future<Either<Failure, AuthUser>> updateProfile({
    required int userId,
    String? name,
    bool? deleteOld,
    File? newAvatar,
  });

  Future<Either<Failure, Unit>> verifyEmail({
    required String email,
    required String otp,
  });

  Future<Either<Failure, Unit>> logout();
}
