import 'package:SEPO/common/error/failure.dart';
import 'package:SEPO/common/services/http_client.dart';
import 'package:SEPO/features/article/data/i_article_repository.dart';
import 'package:SEPO/features/article/domain/article.dart';
import 'package:SEPO/features/article/domain/article_list_item.dart';
import 'package:SEPO/features/article/domain/article_progress.dart';
import 'package:fpdart/fpdart.dart';
import 'package:fpdart/src/either.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../common/error/network_exceptions.dart';

part 'article_repository.g.dart';

@riverpod
IArticleRepository articleRepository(ArticleRepositoryRef ref) {
  final client = ref.watch(httpClientProvider);
  return ArticleRepository(client);
}

class ArticleRepository extends IArticleRepository {
  final HttpClient _client;

  ArticleRepository(this._client);

  @override
  Future<Either<Failure, List<ArticleListItem>>> getArticles(int userId) async {
    try {
      final response = await _client.get('/article');

      final result = (response['data'] as List<dynamic>)
          .mapWithIndex(
            (e, i) => ArticleListItem.fromJson(e),
          )
          .toList();

      return right(result);
    } catch (e) {
      final exception = NetworkExceptions.getDioException(e);
      return left(Failure(exception.getErrorMessage()));
    }
  }

  @override
  Future<Either<Failure, Article>> getArticle(int id) async {
    try {
      final response = await _client.get('/article/$id');
      final result = Article.fromJson(response['data']);
      return right(result);
    } catch (e) {
      final exception = NetworkExceptions.getDioException(e);
      return left(Failure(exception.getErrorMessage()));
    }
  }

  @override
  Future<Either<Failure, Unit>> postArticleRecord(int id) async {
    try {
      await _client.post('/article/$id/record');
      return right(unit);
    } catch (e) {
      final exception = NetworkExceptions.getDioException(e);
      return left(Failure(exception.getErrorMessage()));
    }
  }

  @override
  Future<Either<Failure, ArticleProgress>> getArticleProgress(int userId) async {
    try {
      final response = await _client.get('/user/$userId/articleprogress');
      final result = ArticleProgress.fromJson(response['data']);
      return right(result);
    } catch (e) {
      final exception = NetworkExceptions.getDioException(e);
      return left(Failure(exception.getErrorMessage()));
    }
  }
}
