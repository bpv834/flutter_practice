// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'simple_store.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SimpleStoreImpl _$$SimpleStoreImplFromJson(Map<String, dynamic> json) =>
    _$SimpleStoreImpl(
      id: json['id'] as int?,
      name: json['name'] as String? ?? 'default',
      category: json['category'] as String? ?? 'default',
      address: json['address'] as String? ?? 'default',
      imageUrl: json['image'] as String?,
      lat: (json['latitude'] as num?)?.toDouble() ?? 0.0,
      lng: (json['longitude'] as num?)?.toDouble() ?? 0.0,
      dist: (json['dist'] as num?)?.toDouble() ?? 0.0,
    );

Map<String, dynamic> _$$SimpleStoreImplToJson(_$SimpleStoreImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'category': instance.category,
      'address': instance.address,
      'image': instance.imageUrl,
      'latitude': instance.lat,
      'longitude': instance.lng,
      'dist': instance.dist,
    };
