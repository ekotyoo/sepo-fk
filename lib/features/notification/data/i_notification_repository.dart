import 'package:SEPO/common/error/failure.dart';
import 'package:SEPO/features/notification/domain/notification.dart';
import 'package:fpdart/fpdart.dart';

abstract class INotificationRepository {
  Future<Either<Failure, Unit>> sendDeviceToken(String token, int userId);
  Future<Either<Failure, List<Notification>>> getNotifications();
}