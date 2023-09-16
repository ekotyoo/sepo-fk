import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sepo_app/features/test/data/test_repository.dart';
import 'package:sepo_app/features/test/domain/test.dart';

part 'test_provider.g.dart';

@riverpod
Future<List<Test>> tests(TestsRef ref) async {
  final repo = ref.read(testRepositoryProvider);
  final result = await repo.getTests();

  return result.fold((l) => [], (r) => r);
}