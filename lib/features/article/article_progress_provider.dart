import 'package:SEPO/features/article/data/article_repository.dart';
import 'package:SEPO/features/auth/data/auth_repository.dart';
import 'package:SEPO/features/auth/domain/auth_user.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'domain/article_progress.dart';

part 'article_progress_provider.g.dart';

@riverpod
Future<ArticleProgress?> getArticleProgress(GetArticleProgressRef ref) async {
  final repo = ref.watch(articleRepositoryProvider);
  final authState = ref.watch(authStateProvider) as SignedIn;
  final result = await repo.getArticleProgress(authState.id);

  return result.fold(
    (l) => null,
    (r) => r,
  );
}
