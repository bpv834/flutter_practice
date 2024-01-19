import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'intra_day_info.freezed.dart';

part 'intra_day_info.g.dart';

@freezed
class IntraDayInfo with _$IntraDayInfo {
  //데이터를 타입그대로 받은 dto를 mapper를 활용하여 intradayinfo(내가 원하는 타입으로) 변경할 예정
  const factory IntraDayInfo({
    required DateTime data,
    required double close,
  }) = _IntraDayInfo;
  
  factory IntraDayInfo.fromJson(Map<String, Object?> json) => _$IntraDayInfoFromJson(json); 
}