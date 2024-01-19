import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'intra_day_info_dto.freezed.dart';

part 'intra_day_info_dto.g.dart';

@freezed
class IntraDayInfoDto with _$IntraDayInfoDto {
  const factory IntraDayInfoDto({
    required String timeStamp,
    required double close,
  }) = _IntraDayInfoDto;

  factory IntraDayInfoDto.fromJson(Map<String, Object?> json) => _$IntraDayInfoDtoFromJson(json);
}