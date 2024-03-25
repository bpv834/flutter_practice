import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'store_info.freezed.dart';

part 'store_info.g.dart';

@freezed
class StoreInfo with _$StoreInfo {
  const factory StoreInfo({
    required int id,
    required String? name,
    required String? category,
    required String? address,
    required String? latitude,
    required String? longitude,
    String? workdayTime,
    String? satTime,
    String? sunTime,
    String? rest,
    String? tel,
    String? optionExplain,
    String? additionalExplain,
    String? instagramId,
    String? instagramLink,




  }) = _StoreInfo;

  factory StoreInfo.fromJson(Map<String, Object?> json) => _$StoreInfoFromJson(json);
}