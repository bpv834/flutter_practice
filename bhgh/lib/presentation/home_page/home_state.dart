import 'package:bhgh/domain/model/user_tiles.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'home_state.freezed.dart';

part 'home_state.g.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    @Default([])List<UserTiles> tiles,
    @Default(false) bool isLoading,
  }) = _HomeState;

  factory HomeState.fromJson(Map<String, Object?> json) => _$HomeStateFromJson(json);
}