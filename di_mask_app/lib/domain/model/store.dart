import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'store.freezed.dart';

part 'store.g.dart';

@freezed
class Store with _$Store {
  const factory Store({
    required String name,
    required String address,
    required num lat,
    required num lng,
    @Default(0) required num distance,
    required String remainStat,
  }) = _Store;

  factory Store.fromJson(Map<String, Object?> json) => _$StoreFromJson(json);
}
