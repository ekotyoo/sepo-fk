import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const String kAccessToken = 'access_token';
const String kRefreshToken = 'refresh_token';

class AuthInterceptor extends QueuedInterceptor {
  AuthInterceptor({
    this.onReject,
    required this.dio,
  });

  final VoidCallback? onReject;
  final Dio dio;

  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    if (kDebugMode) {
      print('REQUEST[${options.method}] => PATH: ${options.path}');
    }

    final prefs = await SharedPreferences.getInstance();

    String? accessToken = prefs.getString(kAccessToken);
    options.headers.addAll({'Authorization': 'Bearer $accessToken'});

    if (kDebugMode) {
      print('HEADERS[${options.headers}]');
    }

    return handler.next(options);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) async {
    if (kDebugMode) {
      print(
          'ERROR[${err.response?.statusCode}] => PATH: ${err.requestOptions.path}');
    }

    final prefs = await SharedPreferences.getInstance();

    int? statusCode = err.response?.statusCode;
    String? oldAccessToken = prefs.getString(kAccessToken);

    if (oldAccessToken != null && statusCode == 401) {
      String? refreshToken = prefs.getString(kRefreshToken);

      if (kDebugMode) {
        print('Old Access Token: $oldAccessToken');
      }

      if (refreshToken != null) {
        final response = await Dio().post('auth/refresh');
        final accessToken = response.data['token']['access'];

        if (accessToken != null) {
          await prefs.setString(kAccessToken, accessToken);

          if (kDebugMode) {
            print('Old Access Token: $oldAccessToken');
            print('New Access Token: $accessToken');
          }

          err.requestOptions.headers
              .addAll({'Authorization': 'Bearer $accessToken'});
          final opts = Options(
              method: err.requestOptions.method,
              headers: err.requestOptions.headers);

          final cloneReq = await Dio().request(err.requestOptions.path,
              options: opts,
              data: err.requestOptions.data,
              queryParameters: err.requestOptions.queryParameters);

          return handler.resolve(cloneReq);
        } else {
          onReject?.call();
          return handler.reject(err);
        }
      } else {
        onReject?.call();
        return handler.reject(err);
      }
    } else {
      return handler.reject(err);
    }
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    if (kDebugMode) {
      print(
          'RESPONSE[${response.statusCode}] => PATH: ${response.requestOptions.path}');
    }

    handler.next(response);
  }
}
