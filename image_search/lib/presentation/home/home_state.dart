import 'dart:collection';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import '../../domain/model/Photo.dart';

// 필수: `main.dart`를 Freezed에서 생성한 코드와 연결합니다.
part 'home_state.freezed.dart';

// 옵션(선택사항): HomeState 클래스는 직렬화 가능하므로 이 줄을 추가해야 합니다.
// 그러나 Homestate가 직렬화 가능하지 않은 경우 건너뛸 수 있습니다.
part 'home_state.g.dart';

@freezed
class HomeState with _$HomeState {
  factory HomeState(
      //불변
    List<Photo> photos,
    bool isLoading,
  ) = _HomeState;

  factory HomeState.fromJson(Map<String, Object?> json) =>
      _$HomeStateFromJson(json);
}
