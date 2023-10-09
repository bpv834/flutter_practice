import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'Photo.freezed.dart';
part 'Photo.g.dart';
@JsonSerializable()
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