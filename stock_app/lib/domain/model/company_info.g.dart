// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CompanyInfoImpl _$$CompanyInfoImplFromJson(Map<String, dynamic> json) =>
    _$CompanyInfoImpl(
      symbol: json['symbol'] as String,
      description: json['description'] as String,
      name: json['name'] as String,
      country: json['country'] as String,
      industry: json['industry'] as String,
    );

Map<String, dynamic> _$$CompanyInfoImplToJson(_$CompanyInfoImpl instance) =>
    <String, dynamic>{
      'symbol': instance.symbol,
      'description': instance.description,
      'name': instance.name,
      'country': instance.country,
      'industry': instance.industry,
    };
