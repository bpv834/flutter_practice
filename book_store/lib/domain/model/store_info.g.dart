// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StoreInfoImpl _$$StoreInfoImplFromJson(Map<String, dynamic> json) =>
    _$StoreInfoImpl(
      id: json['id'] as int,
      name: json['name'] as String?,
      category: json['category'] as String?,
      address: json['address'] as String?,
      latitude: json['latitude'] as String?,
      longitude: json['longitude'] as String?,
      workdayTime: json['workdayTime'] as String?,
      satTime: json['satTime'] as String?,
      sunTime: json['sunTime'] as String?,
      rest: json['rest'] as String?,
      tel: json['tel'] as String?,
      optionExplain: json['optionExplain'] as String?,
      additionalExplain: json['additionalExplain'] as String?,
      instagramId: json['instagramId'] as String?,
      instagramLink: json['instagramLink'] as String?,
    );

Map<String, dynamic> _$$StoreInfoImplToJson(_$StoreInfoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'category': instance.category,
      'address': instance.address,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'workdayTime': instance.workdayTime,
      'satTime': instance.satTime,
      'sunTime': instance.sunTime,
      'rest': instance.rest,
      'tel': instance.tel,
      'optionExplain': instance.optionExplain,
      'additionalExplain': instance.additionalExplain,
      'instagramId': instance.instagramId,
      'instagramLink': instance.instagramLink,
    };
