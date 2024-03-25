import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'simple_store.freezed.dart';

part 'simple_store.g.dart';

@freezed
class SimpleStore with _$SimpleStore {
  const factory SimpleStore({
    required int? id,
    @Default('default') required String? name,
    @Default('default') required String? category,
    @Default('default') required String? address,
    @JsonKey(name: 'image') required String? imageUrl,
    @Default(0.0) @JsonKey(name: 'latitude')double lat,
    @Default(0.0) @JsonKey(name: 'longitude')double lng,
    @Default(0.0) double dist,
  }) = _SimpleStore;

  factory SimpleStore.fromJson(Map<String, Object?> json) => _$SimpleStoreFromJson(json);
}