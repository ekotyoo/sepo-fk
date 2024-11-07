import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:SEPO/features/assessment/domain/pill_count.dart';
import 'package:SEPO/features/auth/data/auth_repository.dart';
import 'package:SEPO/features/auth/domain/auth_user.dart';

import '../../test/data/pill_count_repository.dart';

part 'pill_count_provider.g.dart';

@riverpod
Future<List<PillCount>> pillCounts(PillCountsRef ref) async {
  final repo = ref.read(pillCountRepositoryProvider);
  final authState = ref.watch(authStateProvider) as SignedIn;
  final result = await repo.getPillCounts(authState.id);

  return result.fold((l) => [], (r) => r);
}