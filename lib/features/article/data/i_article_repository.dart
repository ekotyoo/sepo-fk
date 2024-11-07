import 'package:SEPO/common/error/failure.dart';
import 'package:SEPO/features/article/domain/article.dart';
import 'package:fpdart/fpdart.dart';

import '../domain/article_list_item.dart';
import '../domain/article_progress.dart';

abstract class IArticleRepository {
  Future<Either<Failure, List<ArticleListItem>>> getArticles(int userId);
  Future<Either<Failure, Article>> getArticle(int id);
  Future<Either<Failure, ArticleProgress>> getArticleProgress(int userId);
  Future<Either<Failure, Unit>> postArticleRecord(int id);
}