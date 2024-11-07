import 'package:freezed_annotation/freezed_annotation.dart';

part 'article_list_item.freezed.dart';
part 'article_list_item.g.dart';

@freezed
class ArticleListItem with _$ArticleListItem {
  const factory ArticleListItem({
    required int id,
    required String title,
    required int point,
    required int duration,
    required int week,
    @Default(false) bool isLocked,
  }) = _ArticleListItem;

  factory ArticleListItem.fromJson(Map<String, Object?> json) => _$ArticleListItemFromJson(json);
}
