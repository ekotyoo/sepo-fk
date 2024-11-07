import 'package:SEPO/features/test/data/test_repository.dart';
import 'package:SEPO/features/test/domain/test_score.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../auth/data/auth_repository.dart';
import '../auth/domain/auth_user.dart';

part 'test_score_provider.g.dart';

@riverpod
Future<TestScore?> getTestScore(GetTestScoreRef ref, int? testId) async {
  if (testId == null) return null;

  final repo = ref.watch(testRepositoryProvider);
  final authState = ref.watch(authStateProvider) as SignedIn;


  final result = await repo.getTestScore(authState.id, testId);

  return result.fold(
        (l) => null,
        (r) => r,
  );
}