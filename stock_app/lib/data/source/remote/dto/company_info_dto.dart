//jsonData를 직접 받을 객체
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'company_info_dto.freezed.dart';

part 'company_info_dto.g.dart';

@freezed
class CompanyInfoDto with _$CompanyInfoDto {
  //dto는 json데이터의 이름과 대소문자까지 같아야 함 그것을 @key로 맞춰줌
  const factory CompanyInfoDto({
    @JsonKey(name: 'Symbol')String? symbol,
    @JsonKey(name: 'Description')String? description,
    @JsonKey(name: 'Name')String? name,
    @JsonKey(name: 'Country')String? country,
    @JsonKey(name: 'Industry')String? industry,
  }) = _CompanyInfoDto;
  
  factory CompanyInfoDto.fromJson(Map<String, Object?> json) => _$CompanyInfoDtoFromJson(json); 
}