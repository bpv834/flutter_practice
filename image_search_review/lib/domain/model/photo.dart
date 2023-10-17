// 이 파일은 "main.dart" 입니다.
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

// 필수: `main.dart`를 Freezed에서 생성한 코드와 연결합니다.
part 'photo.freezed.dart';
// 옵션(선택사항): Person 클래스는 직렬화 가능하므로 이 줄을 추가해야 합니다.
// 그러나 Person이 직렬화 가능하지 않은 경우 건너뛸 수 있습니다.
part 'photo.g.dart';

@freezed
class Photo with _$Photo {
  const factory Photo({
    required int id,
    required String tags,
    required String previewURL,
  }) = _Photo;

  factory Photo.fromJson(Map<String, Object?> json)
  => _$PhotoFromJson(json);
}