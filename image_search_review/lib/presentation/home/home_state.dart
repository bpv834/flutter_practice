// 이 파일은 "main.dart" 입니다.
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

import '../../domain/model/photo.dart';

// 필수: `main.dart`를 Freezed에서 생성한 코드와 연결합니다.
part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  factory HomeState(
    List<Photo> photos,
    bool isLoading,
  ) = _HomeState;
}
