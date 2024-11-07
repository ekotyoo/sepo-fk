import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification.freezed.dart';
part 'notification.g.dart';

@freezed
class Notification with _$Notification {
  const factory Notification({
    required String title,
    required String body
  }) = _Notification;

  factory Notification.fromJson(Map<String, Object?> json) => _$NotificationFromJson(json);
}