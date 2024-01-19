// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'intra_day_info_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$IntraDayInfoDtoImpl _$$IntraDayInfoDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$IntraDayInfoDtoImpl(
      timeStamp: json['timeStamp'] as String,
      close: (json['close'] as num).toDouble(),
    );

Map<String, dynamic> _$$IntraDayInfoDtoImplToJson(
        _$IntraDayInfoDtoImpl instance) =>
    <String, dynamic>{
      'timeStamp': instance.timeStamp,
      'close': instance.close,
    };
