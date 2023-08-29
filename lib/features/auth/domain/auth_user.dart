import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_user.freezed.dart';

part 'auth_user.g.dart';

@freezed
class AuthUserWrapper with _$AuthUserWrapper {
  const factory AuthUserWrapper({
    required int id,
    required String name,
    required String email,
    @JsonKey(name: 'access_token') String? accessToken,
    String? avatar,
    @JsonKey(name: 'is_admin', defaultValue: false) required bool isAdmin,
    @JsonKey(name: 'is_active', defaultValue: false) required bool isActive
  }) = _AuthUserWrapper;

  factory AuthUserWrapper.fromJson(Map<String, dynamic> json) => _$AuthUserWrapperFromJson(json);
}

@freezed
class AuthUser with _$AuthUser {
  const factory AuthUser.signedIn({
    required int id,
    required String name,
    required String email,
    required String? accessToken,
    String? avatar,
    @Default(false) bool isAdmin,
  }) = SignedIn;

  const factory AuthUser.signedOut() = SignedOut;

  factory AuthUser.fromJson(Map<String, dynamic> json) => _$AuthUserFromJson(json);
}
