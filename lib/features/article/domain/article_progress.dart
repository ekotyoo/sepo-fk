import 'package:SEPO/features/article/domain/article_list_item.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'article_progress.freezed.dart';
part 'article_progress.g.dart';

@freezed
class ArticleProgress with _$ArticleProgress {
  const factory ArticleProgress({
    required double progress,
    required int score,
    ArticleListItem? nextArticle,
  }) = _ArticleProgress;

  factory ArticleProgress.fromJson(Map<String, Object?> json) =>
      _$ArticleProgressFromJson(json);
}
