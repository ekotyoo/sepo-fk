// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AuthUserWrapper _$AuthUserWrapperFromJson(Map<String, dynamic> json) {
  return _AuthUserWrapper.fromJson(json);
}

/// @nodoc
mixin _$AuthUserWrapper {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'access_token')
  String? get accessToken => throw _privateConstructorUsedError;
  String? get avatar => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_admin', defaultValue: false)
  bool get isAdmin => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_active', defaultValue: false)
  bool get isActive => throw _privateConstructorUsedError;
  @JsonKey(name: 'personal_data_filled', defaultValue: false)
  bool get personalDataFilled => throw _privateConstructorUsedError;
  @JsonKey(name: 'current_condition_filled', defaultValue: false)
  bool get currentConditionFilled => throw _privateConstructorUsedError;
  @JsonKey(name: 'pill_count_filled', defaultValue: false)
  bool get pillCountFilled => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthUserWrapperCopyWith<AuthUserWrapper> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthUserWrapperCopyWith<$Res> {
  factory $AuthUserWrapperCopyWith(
          AuthUserWrapper value, $Res Function(AuthUserWrapper) then) =
      _$AuthUserWrapperCopyWithImpl<$Res, AuthUserWrapper>;
  @useResult
  $Res call(
      {int id,
      String name,
      String email,
      @JsonKey(name: 'access_token') String? accessToken,
      String? avatar,
      @JsonKey(name: 'is_admin', defaultValue: false) bool isAdmin,
      @JsonKey(name: 'is_active', defaultValue: false) bool isActive,
      @JsonKey(name: 'personal_data_filled', defaultValue: false)
      bool personalDataFilled,
      @JsonKey(name: 'current_condition_filled', defaultValue: false)
      bool currentConditionFilled,
      @JsonKey(name: 'pill_count_filled', defaultValue: false)
      bool pillCountFilled});
}

/// @nodoc
class _$AuthUserWrapperCopyWithImpl<$Res, $Val extends AuthUserWrapper>
    implements $AuthUserWrapperCopyWith<$Res> {
  _$AuthUserWrapperCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? email = null,
    Object? accessToken = freezed,
    Object? avatar = freezed,
    Object? isAdmin = null,
    Object? isActive = null,
    Object? personalDataFilled = null,
    Object? currentConditionFilled = null,
    Object? pillCountFilled = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      accessToken: freezed == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      isAdmin: null == isAdmin
          ? _value.isAdmin
          : isAdmin // ignore: cast_nullable_to_non_nullable
              as bool,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      personalDataFilled: null == personalDataFilled
          ? _value.personalDataFilled
          : personalDataFilled // ignore: cast_nullable_to_non_nullable
              as bool,
      currentConditionFilled: null == currentConditionFilled
          ? _value.currentConditionFilled
          : currentConditionFilled // ignore: cast_nullable_to_non_nullable
              as bool,
      pillCountFilled: null == pillCountFilled
          ? _value.pillCountFilled
          : pillCountFilled // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AuthUserWrapperCopyWith<$Res>
    implements $AuthUserWrapperCopyWith<$Res> {
  factory _$$_AuthUserWrapperCopyWith(
          _$_AuthUserWrapper value, $Res Function(_$_AuthUserWrapper) then) =
      __$$_AuthUserWrapperCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String email,
      @JsonKey(name: 'access_token') String? accessToken,
      String? avatar,
      @JsonKey(name: 'is_admin', defaultValue: false) bool isAdmin,
      @JsonKey(name: 'is_active', defaultValue: false) bool isActive,
      @JsonKey(name: 'personal_data_filled', defaultValue: false)
      bool personalDataFilled,
      @JsonKey(name: 'current_condition_filled', defaultValue: false)
      bool currentConditionFilled,
      @JsonKey(name: 'pill_count_filled', defaultValue: false)
      bool pillCountFilled});
}

/// @nodoc
class __$$_AuthUserWrapperCopyWithImpl<$Res>
    extends _$AuthUserWrapperCopyWithImpl<$Res, _$_AuthUserWrapper>
    implements _$$_AuthUserWrapperCopyWith<$Res> {
  __$$_AuthUserWrapperCopyWithImpl(
      _$_AuthUserWrapper _value, $Res Function(_$_AuthUserWrapper) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? email = null,
    Object? accessToken = freezed,
    Object? avatar = freezed,
    Object? isAdmin = null,
    Object? isActive = null,
    Object? personalDataFilled = null,
    Object? currentConditionFilled = null,
    Object? pillCountFilled = null,
  }) {
    return _then(_$_AuthUserWrapper(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      accessToken: freezed == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      isAdmin: null == isAdmin
          ? _value.isAdmin
          : isAdmin // ignore: cast_nullable_to_non_nullable
              as bool,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      personalDataFilled: null == personalDataFilled
          ? _value.personalDataFilled
          : personalDataFilled // ignore: cast_nullable_to_non_nullable
              as bool,
      currentConditionFilled: null == currentConditionFilled
          ? _value.currentConditionFilled
          : currentConditionFilled // ignore: cast_nullable_to_non_nullable
              as bool,
      pillCountFilled: null == pillCountFilled
          ? _value.pillCountFilled
          : pillCountFilled // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AuthUserWrapper implements _AuthUserWrapper {
  const _$_AuthUserWrapper(
      {required this.id,
      required this.name,
      required this.email,
      @JsonKey(name: 'access_token') this.accessToken,
      this.avatar,
      @JsonKey(name: 'is_admin', defaultValue: false) required this.isAdmin,
      @JsonKey(name: 'is_active', defaultValue: false) required this.isActive,
      @JsonKey(name: 'personal_data_filled', defaultValue: false)
      required this.personalDataFilled,
      @JsonKey(name: 'current_condition_filled', defaultValue: false)
      required this.currentConditionFilled,
      @JsonKey(name: 'pill_count_filled', defaultValue: false)
      required this.pillCountFilled});

  factory _$_AuthUserWrapper.fromJson(Map<String, dynamic> json) =>
      _$$_AuthUserWrapperFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String email;
  @override
  @JsonKey(name: 'access_token')
  final String? accessToken;
  @override
  final String? avatar;
  @override
  @JsonKey(name: 'is_admin', defaultValue: false)
  final bool isAdmin;
  @override
  @JsonKey(name: 'is_active', defaultValue: false)
  final bool isActive;
  @override
  @JsonKey(name: 'personal_data_filled', defaultValue: false)
  final bool personalDataFilled;
  @override
  @JsonKey(name: 'current_condition_filled', defaultValue: false)
  final bool currentConditionFilled;
  @override
  @JsonKey(name: 'pill_count_filled', defaultValue: false)
  final bool pillCountFilled;

  @override
  String toString() {
    return 'AuthUserWrapper(id: $id, name: $name, email: $email, accessToken: $accessToken, avatar: $avatar, isAdmin: $isAdmin, isActive: $isActive, personalDataFilled: $personalDataFilled, currentConditionFilled: $currentConditionFilled, pillCountFilled: $pillCountFilled)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthUserWrapper &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            (identical(other.isAdmin, isAdmin) || other.isAdmin == isAdmin) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.personalDataFilled, personalDataFilled) ||
                other.personalDataFilled == personalDataFilled) &&
            (identical(other.currentConditionFilled, currentConditionFilled) ||
                other.currentConditionFilled == currentConditionFilled) &&
            (identical(other.pillCountFilled, pillCountFilled) ||
                other.pillCountFilled == pillCountFilled));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      email,
      accessToken,
      avatar,
      isAdmin,
      isActive,
      personalDataFilled,
      currentConditionFilled,
      pillCountFilled);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthUserWrapperCopyWith<_$_AuthUserWrapper> get copyWith =>
      __$$_AuthUserWrapperCopyWithImpl<_$_AuthUserWrapper>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AuthUserWrapperToJson(
      this,
    );
  }
}

abstract class _AuthUserWrapper implements AuthUserWrapper {
  const factory _AuthUserWrapper(
      {required final int id,
      required final String name,
      required final String email,
      @JsonKey(name: 'access_token') final String? accessToken,
      final String? avatar,
      @JsonKey(name: 'is_admin', defaultValue: false)
      required final bool isAdmin,
      @JsonKey(name: 'is_active', defaultValue: false)
      required final bool isActive,
      @JsonKey(name: 'personal_data_filled', defaultValue: false)
      required final bool personalDataFilled,
      @JsonKey(name: 'current_condition_filled', defaultValue: false)
      required final bool currentConditionFilled,
      @JsonKey(name: 'pill_count_filled', defaultValue: false)
      required final bool pillCountFilled}) = _$_AuthUserWrapper;

  factory _AuthUserWrapper.fromJson(Map<String, dynamic> json) =
      _$_AuthUserWrapper.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get email;
  @override
  @JsonKey(name: 'access_token')
  String? get accessToken;
  @override
  String? get avatar;
  @override
  @JsonKey(name: 'is_admin', defaultValue: false)
  bool get isAdmin;
  @override
  @JsonKey(name: 'is_active', defaultValue: false)
  bool get isActive;
  @override
  @JsonKey(name: 'personal_data_filled', defaultValue: false)
  bool get personalDataFilled;
  @override
  @JsonKey(name: 'current_condition_filled', defaultValue: false)
  bool get currentConditionFilled;
  @override
  @JsonKey(name: 'pill_count_filled', defaultValue: false)
  bool get pillCountFilled;
  @override
  @JsonKey(ignore: true)
  _$$_AuthUserWrapperCopyWith<_$_AuthUserWrapper> get copyWith =>
      throw _privateConstructorUsedError;
}

AuthUser _$AuthUserFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'signedIn':
      return SignedIn.fromJson(json);
    case 'signedOut':
      return SignedOut.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'AuthUser',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$AuthUser {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int id,
            String name,
            String email,
            String? accessToken,
            String? avatar,
            bool isAdmin,
            bool personalDataFilled,
            bool currentConditionFilled,
            bool pillCountFilled)
        signedIn,
    required TResult Function() signedOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            int id,
            String name,
            String email,
            String? accessToken,
            String? avatar,
            bool isAdmin,
            bool personalDataFilled,
            bool currentConditionFilled,
            bool pillCountFilled)?
        signedIn,
    TResult? Function()? signedOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            int id,
            String name,
            String email,
            String? accessToken,
            String? avatar,
            bool isAdmin,
            bool personalDataFilled,
            bool currentConditionFilled,
            bool pillCountFilled)?
        signedIn,
    TResult Function()? signedOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignedIn value) signedIn,
    required TResult Function(SignedOut value) signedOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignedIn value)? signedIn,
    TResult? Function(SignedOut value)? signedOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignedIn value)? signedIn,
    TResult Function(SignedOut value)? signedOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthUserCopyWith<$Res> {
  factory $AuthUserCopyWith(AuthUser value, $Res Function(AuthUser) then) =
      _$AuthUserCopyWithImpl<$Res, AuthUser>;
}

/// @nodoc
class _$AuthUserCopyWithImpl<$Res, $Val extends AuthUser>
    implements $AuthUserCopyWith<$Res> {
  _$AuthUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SignedInCopyWith<$Res> {
  factory _$$SignedInCopyWith(
          _$SignedIn value, $Res Function(_$SignedIn) then) =
      __$$SignedInCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {int id,
      String name,
      String email,
      String? accessToken,
      String? avatar,
      bool isAdmin,
      bool personalDataFilled,
      bool currentConditionFilled,
      bool pillCountFilled});
}

/// @nodoc
class __$$SignedInCopyWithImpl<$Res>
    extends _$AuthUserCopyWithImpl<$Res, _$SignedIn>
    implements _$$SignedInCopyWith<$Res> {
  __$$SignedInCopyWithImpl(_$SignedIn _value, $Res Function(_$SignedIn) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? email = null,
    Object? accessToken = freezed,
    Object? avatar = freezed,
    Object? isAdmin = null,
    Object? personalDataFilled = null,
    Object? currentConditionFilled = null,
    Object? pillCountFilled = null,
  }) {
    return _then(_$SignedIn(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      accessToken: freezed == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      isAdmin: null == isAdmin
          ? _value.isAdmin
          : isAdmin // ignore: cast_nullable_to_non_nullable
              as bool,
      personalDataFilled: null == personalDataFilled
          ? _value.personalDataFilled
          : personalDataFilled // ignore: cast_nullable_to_non_nullable
              as bool,
      currentConditionFilled: null == currentConditionFilled
          ? _value.currentConditionFilled
          : currentConditionFilled // ignore: cast_nullable_to_non_nullable
              as bool,
      pillCountFilled: null == pillCountFilled
          ? _value.pillCountFilled
          : pillCountFilled // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SignedIn implements SignedIn {
  const _$SignedIn(
      {required this.id,
      required this.name,
      required this.email,
      required this.accessToken,
      this.avatar,
      this.isAdmin = false,
      this.personalDataFilled = false,
      this.currentConditionFilled = false,
      this.pillCountFilled = false,
      final String? $type})
      : $type = $type ?? 'signedIn';

  factory _$SignedIn.fromJson(Map<String, dynamic> json) =>
      _$$SignedInFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String email;
  @override
  final String? accessToken;
  @override
  final String? avatar;
  @override
  @JsonKey()
  final bool isAdmin;
  @override
  @JsonKey()
  final bool personalDataFilled;
  @override
  @JsonKey()
  final bool currentConditionFilled;
  @override
  @JsonKey()
  final bool pillCountFilled;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'AuthUser.signedIn(id: $id, name: $name, email: $email, accessToken: $accessToken, avatar: $avatar, isAdmin: $isAdmin, personalDataFilled: $personalDataFilled, currentConditionFilled: $currentConditionFilled, pillCountFilled: $pillCountFilled)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignedIn &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            (identical(other.isAdmin, isAdmin) || other.isAdmin == isAdmin) &&
            (identical(other.personalDataFilled, personalDataFilled) ||
                other.personalDataFilled == personalDataFilled) &&
            (identical(other.currentConditionFilled, currentConditionFilled) ||
                other.currentConditionFilled == currentConditionFilled) &&
            (identical(other.pillCountFilled, pillCountFilled) ||
                other.pillCountFilled == pillCountFilled));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      email,
      accessToken,
      avatar,
      isAdmin,
      personalDataFilled,
      currentConditionFilled,
      pillCountFilled);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignedInCopyWith<_$SignedIn> get copyWith =>
      __$$SignedInCopyWithImpl<_$SignedIn>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int id,
            String name,
            String email,
            String? accessToken,
            String? avatar,
            bool isAdmin,
            bool personalDataFilled,
            bool currentConditionFilled,
            bool pillCountFilled)
        signedIn,
    required TResult Function() signedOut,
  }) {
    return signedIn(id, name, email, accessToken, avatar, isAdmin,
        personalDataFilled, currentConditionFilled, pillCountFilled);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            int id,
            String name,
            String email,
            String? accessToken,
            String? avatar,
            bool isAdmin,
            bool personalDataFilled,
            bool currentConditionFilled,
            bool pillCountFilled)?
        signedIn,
    TResult? Function()? signedOut,
  }) {
    return signedIn?.call(id, name, email, accessToken, avatar, isAdmin,
        personalDataFilled, currentConditionFilled, pillCountFilled);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            int id,
            String name,
            String email,
            String? accessToken,
            String? avatar,
            bool isAdmin,
            bool personalDataFilled,
            bool currentConditionFilled,
            bool pillCountFilled)?
        signedIn,
    TResult Function()? signedOut,
    required TResult orElse(),
  }) {
    if (signedIn != null) {
      return signedIn(id, name, email, accessToken, avatar, isAdmin,
          personalDataFilled, currentConditionFilled, pillCountFilled);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignedIn value) signedIn,
    required TResult Function(SignedOut value) signedOut,
  }) {
    return signedIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignedIn value)? signedIn,
    TResult? Function(SignedOut value)? signedOut,
  }) {
    return signedIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignedIn value)? signedIn,
    TResult Function(SignedOut value)? signedOut,
    required TResult orElse(),
  }) {
    if (signedIn != null) {
      return signedIn(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$SignedInToJson(
      this,
    );
  }
}

abstract class SignedIn implements AuthUser {
  const factory SignedIn(
      {required final int id,
      required final String name,
      required final String email,
      required final String? accessToken,
      final String? avatar,
      final bool isAdmin,
      final bool personalDataFilled,
      final bool currentConditionFilled,
      final bool pillCountFilled}) = _$SignedIn;

  factory SignedIn.fromJson(Map<String, dynamic> json) = _$SignedIn.fromJson;

  int get id;
  String get name;
  String get email;
  String? get accessToken;
  String? get avatar;
  bool get isAdmin;
  bool get personalDataFilled;
  bool get currentConditionFilled;
  bool get pillCountFilled;
  @JsonKey(ignore: true)
  _$$SignedInCopyWith<_$SignedIn> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignedOutCopyWith<$Res> {
  factory _$$SignedOutCopyWith(
          _$SignedOut value, $Res Function(_$SignedOut) then) =
      __$$SignedOutCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignedOutCopyWithImpl<$Res>
    extends _$AuthUserCopyWithImpl<$Res, _$SignedOut>
    implements _$$SignedOutCopyWith<$Res> {
  __$$SignedOutCopyWithImpl(
      _$SignedOut _value, $Res Function(_$SignedOut) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$SignedOut implements SignedOut {
  const _$SignedOut({final String? $type}) : $type = $type ?? 'signedOut';

  factory _$SignedOut.fromJson(Map<String, dynamic> json) =>
      _$$SignedOutFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'AuthUser.signedOut()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SignedOut);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int id,
            String name,
            String email,
            String? accessToken,
            String? avatar,
            bool isAdmin,
            bool personalDataFilled,
            bool currentConditionFilled,
            bool pillCountFilled)
        signedIn,
    required TResult Function() signedOut,
  }) {
    return signedOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            int id,
            String name,
            String email,
            String? accessToken,
            String? avatar,
            bool isAdmin,
            bool personalDataFilled,
            bool currentConditionFilled,
            bool pillCountFilled)?
        signedIn,
    TResult? Function()? signedOut,
  }) {
    return signedOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            int id,
            String name,
            String email,
            String? accessToken,
            String? avatar,
            bool isAdmin,
            bool personalDataFilled,
            bool currentConditionFilled,
            bool pillCountFilled)?
        signedIn,
    TResult Function()? signedOut,
    required TResult orElse(),
  }) {
    if (signedOut != null) {
      return signedOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignedIn value) signedIn,
    required TResult Function(SignedOut value) signedOut,
  }) {
    return signedOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignedIn value)? signedIn,
    TResult? Function(SignedOut value)? signedOut,
  }) {
    return signedOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignedIn value)? signedIn,
    TResult Function(SignedOut value)? signedOut,
    required TResult orElse(),
  }) {
    if (signedOut != null) {
      return signedOut(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$SignedOutToJson(
      this,
    );
  }
}

abstract class SignedOut implements AuthUser {
  const factory SignedOut() = _$SignedOut;

  factory SignedOut.fromJson(Map<String, dynamic> json) = _$SignedOut.fromJson;
}
