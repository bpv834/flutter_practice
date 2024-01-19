// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'intra_day_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$IntraDayInfoImpl _$$IntraDayInfoImplFromJson(Map<String, dynamic> json) =>
    _$IntraDayInfoImpl(
      data: DateTime.parse(json['data'] as String),
      close: (json['close'] as num).toDouble(),
    );

Map<String, dynamic> _$$IntraDayInfoImplToJson(_$IntraDayInfoImpl instance) =>
    <String, dynamic>{
      'data': instance.data.toIso8601String(),
      'close': instance.close,
    };
