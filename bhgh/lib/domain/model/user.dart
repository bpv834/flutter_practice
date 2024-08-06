import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'user.freezed.dart';

part 'user.g.dart';

@freezed
class User with _$User {
  const factory User({
    @Default('email') String email,
    @Default('name') String name,
    @Default('rrn') String rrn,
    @Default('gender') String gender,
    @Default('mainHabit') String mainHabit,
    @Default(0) int age,
    @Default([]) List<String> habits,
  }) = _User;

  factory User.fromJson(Map<String, Object?> json) => _$UserFromJson(json);
}
