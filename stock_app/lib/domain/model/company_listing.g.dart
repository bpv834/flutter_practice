// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company_listing.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CompanyListingImpl _$$CompanyListingImplFromJson(Map<String, dynamic> json) =>
    _$CompanyListingImpl(
      symbol: json['symbol'] as String,
      name: json['name'] as String,
      exchange: json['exchange'] as String,
    );

Map<String, dynamic> _$$CompanyListingImplToJson(
        _$CompanyListingImpl instance) =>
    <String, dynamic>{
      'symbol': instance.symbol,
      'name': instance.name,
      'exchange': instance.exchange,
    };
