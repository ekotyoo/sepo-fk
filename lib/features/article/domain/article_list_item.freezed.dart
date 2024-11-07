// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'article_list_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ArticleListItem _$ArticleListItemFromJson(Map<String, dynamic> json) {
  return _ArticleListItem.fromJson(json);
}

/// @nodoc
mixin _$ArticleListItem {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  int get point => throw _privateConstructorUsedError;
  int get duration => throw _privateConstructorUsedError;
  int get week => throw _privateConstructorUsedError;
  bool get isLocked => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ArticleListItemCopyWith<ArticleListItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArticleListItemCopyWith<$Res> {
  factory $ArticleListItemCopyWith(
          ArticleListItem value, $Res Function(ArticleListItem) then) =
      _$ArticleListItemCopyWithImpl<$Res, ArticleListItem>;
  @useResult
  $Res call(
      {int id, String title, int point, int duration, int week, bool isLocked});
}

/// @nodoc
class _$ArticleListItemCopyWithImpl<$Res, $Val extends ArticleListItem>
    implements $ArticleListItemCopyWith<$Res> {
  _$ArticleListItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? point = null,
    Object? duration = null,
    Object? week = null,
    Object? isLocked = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      point: null == point
          ? _value.point
          : point // ignore: cast_nullable_to_non_nullable
              as int,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
      week: null == week
          ? _value.week
          : week // ignore: cast_nullable_to_non_nullable
              as int,
      isLocked: null == isLocked
          ? _value.isLocked
          : isLocked // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ArticleListItemCopyWith<$Res>
    implements $ArticleListItemCopyWith<$Res> {
  factory _$$_ArticleListItemCopyWith(
          _$_ArticleListItem value, $Res Function(_$_ArticleListItem) then) =
      __$$_ArticleListItemCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id, String title, int point, int duration, int week, bool isLocked});
}

/// @nodoc
class __$$_ArticleListItemCopyWithImpl<$Res>
    extends _$ArticleListItemCopyWithImpl<$Res, _$_ArticleListItem>
    implements _$$_ArticleListItemCopyWith<$Res> {
  __$$_ArticleListItemCopyWithImpl(
      _$_ArticleListItem _value, $Res Function(_$_ArticleListItem) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? point = null,
    Object? duration = null,
    Object? week = null,
    Object? isLocked = null,
  }) {
    return _then(_$_ArticleListItem(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      point: null == point
          ? _value.point
          : point // ignore: cast_nullable_to_non_nullable
              as int,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
      week: null == week
          ? _value.week
          : week // ignore: cast_nullable_to_non_nullable
              as int,
      isLocked: null == isLocked
          ? _value.isLocked
          : isLocked // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ArticleListItem implements _ArticleListItem {
  const _$_ArticleListItem(
      {required this.id,
      required this.title,
      required this.point,
      required this.duration,
      required this.week,
      this.isLocked = false});

  factory _$_ArticleListItem.fromJson(Map<String, dynamic> json) =>
      _$$_ArticleListItemFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final int point;
  @override
  final int duration;
  @override
  final int week;
  @override
  @JsonKey()
  final bool isLocked;

  @override
  String toString() {
    return 'ArticleListItem(id: $id, title: $title, point: $point, duration: $duration, week: $week, isLocked: $isLocked)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ArticleListItem &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.point, point) || other.point == point) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.week, week) || other.week == week) &&
            (identical(other.isLocked, isLocked) ||
                other.isLocked == isLocked));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, title, point, duration, week, isLocked);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ArticleListItemCopyWith<_$_ArticleListItem> get copyWith =>
      __$$_ArticleListItemCopyWithImpl<_$_ArticleListItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ArticleListItemToJson(
      this,
    );
  }
}

abstract class _ArticleListItem implements ArticleListItem {
  const factory _ArticleListItem(
      {required final int id,
      required final String title,
      required final int point,
      required final int duration,
      required final int week,
      final bool isLocked}) = _$_ArticleListItem;

  factory _ArticleListItem.fromJson(Map<String, dynamic> json) =
      _$_ArticleListItem.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  int get point;
  @override
  int get duration;
  @override
  int get week;
  @override
  bool get isLocked;
  @override
  @JsonKey(ignore: true)
  _$$_ArticleListItemCopyWith<_$_ArticleListItem> get copyWith =>
      throw _privateConstructorUsedError;
}
