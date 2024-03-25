import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'region_section.freezed.dart';

@freezed
sealed class RegionSection with _$RegionSection {
  const factory RegionSection.all() = All;
  const factory RegionSection.lookByRegion(String areaName) = LookByRegion;
}