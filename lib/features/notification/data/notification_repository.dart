import 'package:SEPO/common/error/failure.dart';
import 'package:SEPO/common/services/http_client.dart';
import 'package:SEPO/features/notification/data/i_notification_repository.dart';
import 'package:SEPO/features/notification/domain/notification.dart';
import 'package:dio/dio.dart';
import 'package:fpdart/src/either.dart';
import 'package:fpdart/src/unit.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../common/error/network_exceptions.dart';

part 'notification_repository.g.dart';

@riverpod
INotificationRepository notificationRepository(NotificationRepositoryRef ref) {
  final client = ref.watch(httpClientProvider);
  return NotificationRepository(client);
}

class NotificationRepository implements INotificationRepository {
  final HttpClient _client;

  NotificationRepository(this._client);

  @override
  Future<Either<Failure, Unit>> sendDeviceToken(
      String token, int userId) async {
    try {
      await _client.put(
        '/user/$userId',
        data: FormData.fromMap({'device_token': token}),
      );

      return right(unit);
    } catch (e) {
      final exception = NetworkExceptions.getDioException(e);
      return left(Failure(exception.getErrorMessage()));
    }
  }

  @override
  Future<Either<Failure, List<Notification>>> getNotifications() async {
    try {
      final response = await _client.get('/notification');
      final result = (response['data'] as List<dynamic>)
          .map((e) => Notification.fromJson(e))
          .toList();
      return right(result);
    } catch (e) {
      final exception = NetworkExceptions.getDioException(e);
      return left(Failure(exception.getErrorMessage()));
    }
  }
}
