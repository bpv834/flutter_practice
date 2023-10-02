import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'Photo.g.dart';
part 'Photo.freezed.dart';
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