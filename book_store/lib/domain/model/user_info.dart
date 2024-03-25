import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'user_info.freezed.dart';

part 'user_info.g.dart';

@freezed
class UserInfo with _$UserInfo {
  const factory UserInfo({
    required int id,
    required String nickname,
    required int age,
    String? category,
    String? profileImage,
  }) = _UserInfo;

  factory UserInfo.fromJson(Map<String, Object?> json) => _$UserInfoFromJson(json);
}