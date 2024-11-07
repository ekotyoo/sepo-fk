import 'package:SEPO/features/notification/domain/notification.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../data/notification_repository.dart';

part 'notification_list_provider.g.dart';

@riverpod
Future<List<Notification>> getNotifications(GetNotificationsRef ref) async {
  final repo = ref.watch(notificationRepositoryProvider);
  final result = await repo.getNotifications();
  return result.fold(
    (l) => [],
    (r) => r,
  );
}
