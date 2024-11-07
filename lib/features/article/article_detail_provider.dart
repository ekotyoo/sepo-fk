import 'package:SEPO/features/article/article_list_provider.dart';
import 'package:SEPO/features/article/article_progress_provider.dart';
import 'package:SEPO/features/article/data/article_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'domain/article.dart';

part 'article_detail_provider.g.dart';

@riverpod
Future<Article> getArticle(GetArticleRef ref, int id) async {
  final repo = ref.watch(articleRepositoryProvider);
  final result = await repo.getArticle(id);

  await repo.postArticleRecord(id);
  ref.invalidate(getArticlesProvider);
  ref.invalidate(getArticleProgressProvider);

  return result.fold(
    (l) => throw(l.cause as Exception),
    (r) => r,
  );
}
