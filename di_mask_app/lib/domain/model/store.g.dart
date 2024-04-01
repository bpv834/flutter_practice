// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StoreImpl _$$StoreImplFromJson(Map<String, dynamic> json) => _$StoreImpl(
      name: json['name'] as String,
      address: json['address'] as String,
      lat: json['lat'] as num,
      lng: json['lng'] as num,
      distance: json['distance'] as num? ?? 0,
      remainStat: json['remainStat'] as String,
    );

Map<String, dynamic> _$$StoreImplToJson(_$StoreImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'address': instance.address,
      'lat': instance.lat,
      'lng': instance.lng,
      'distance': instance.distance,
      'remainStat': instance.remainStat,
    };
