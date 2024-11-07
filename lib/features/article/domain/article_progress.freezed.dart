// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'article_progress.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ArticleProgress _$ArticleProgressFromJson(Map<String, dynamic> json) {
  return _ArticleProgress.fromJson(json);
}

/// @nodoc
mixin _$ArticleProgress {
  double get progress => throw _privateConstructorUsedError;
  int get score => throw _privateConstructorUsedError;
  ArticleListItem? get nextArticle => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ArticleProgressCopyWith<ArticleProgress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArticleProgressCopyWith<$Res> {
  factory $ArticleProgressCopyWith(
          ArticleProgress value, $Res Function(ArticleProgress) then) =
      _$ArticleProgressCopyWithImpl<$Res, ArticleProgress>;
  @useResult
  $Res call({double progress, int score, ArticleListItem? nextArticle});

  $ArticleListItemCopyWith<$Res>? get nextArticle;
}

/// @nodoc
class _$ArticleProgressCopyWithImpl<$Res, $Val extends ArticleProgress>
    implements $ArticleProgressCopyWith<$Res> {
  _$ArticleProgressCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? progress = null,
    Object? score = null,
    Object? nextArticle = freezed,
  }) {
    return _then(_value.copyWith(
      progress: null == progress
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as double,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int,
      nextArticle: freezed == nextArticle
          ? _value.nextArticle
          : nextArticle // ignore: cast_nullable_to_non_nullable
              as ArticleListItem?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ArticleListItemCopyWith<$Res>? get nextArticle {
    if (_value.nextArticle == null) {
      return null;
    }

    return $ArticleListItemCopyWith<$Res>(_value.nextArticle!, (value) {
      return _then(_value.copyWith(nextArticle: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ArticleProgressCopyWith<$Res>
    implements $ArticleProgressCopyWith<$Res> {
  factory _$$_ArticleProgressCopyWith(
          _$_ArticleProgress value, $Res Function(_$_ArticleProgress) then) =
      __$$_ArticleProgressCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double progress, int score, ArticleListItem? nextArticle});

  @override
  $ArticleListItemCopyWith<$Res>? get nextArticle;
}

/// @nodoc
class __$$_ArticleProgressCopyWithImpl<$Res>
    extends _$ArticleProgressCopyWithImpl<$Res, _$_ArticleProgress>
    implements _$$_ArticleProgressCopyWith<$Res> {
  __$$_ArticleProgressCopyWithImpl(
      _$_ArticleProgress _value, $Res Function(_$_ArticleProgress) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? progress = null,
    Object? score = null,
    Object? nextArticle = freezed,
  }) {
    return _then(_$_ArticleProgress(
      progress: null == progress
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as double,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int,
      nextArticle: freezed == nextArticle
          ? _value.nextArticle
          : nextArticle // ignore: cast_nullable_to_non_nullable
              as ArticleListItem?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ArticleProgress implements _ArticleProgress {
  const _$_ArticleProgress(
      {required this.progress, required this.score, this.nextArticle});

  factory _$_ArticleProgress.fromJson(Map<String, dynamic> json) =>
      _$$_ArticleProgressFromJson(json);

  @override
  final double progress;
  @override
  final int score;
  @override
  final ArticleListItem? nextArticle;

  @override
  String toString() {
    return 'ArticleProgress(progress: $progress, score: $score, nextArticle: $nextArticle)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ArticleProgress &&
            (identical(other.progress, progress) ||
                other.progress == progress) &&
            (identical(other.score, score) || other.score == score) &&
            (identical(other.nextArticle, nextArticle) ||
                other.nextArticle == nextArticle));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, progress, score, nextArticle);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ArticleProgressCopyWith<_$_ArticleProgress> get copyWith =>
      __$$_ArticleProgressCopyWithImpl<_$_ArticleProgress>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ArticleProgressToJson(
      this,
    );
  }
}

abstract class _ArticleProgress implements ArticleProgress {
  const factory _ArticleProgress(
      {required final double progress,
      required final int score,
      final ArticleListItem? nextArticle}) = _$_ArticleProgress;

  factory _ArticleProgress.fromJson(Map<String, dynamic> json) =
      _$_ArticleProgress.fromJson;

  @override
  double get progress;
  @override
  int get score;
  @override
  ArticleListItem? get nextArticle;
  @override
  @JsonKey(ignore: true)
  _$$_ArticleProgressCopyWith<_$_ArticleProgress> get copyWith =>
      throw _privateConstructorUsedError;
}
