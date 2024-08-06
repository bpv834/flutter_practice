// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HomeStateImpl _$$HomeStateImplFromJson(Map<String, dynamic> json) =>
    _$HomeStateImpl(
      tiles: (json['tiles'] as List<dynamic>?)
              ?.map((e) => UserTiles.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      isLoading: json['isLoading'] as bool? ?? false,
    );

Map<String, dynamic> _$$HomeStateImplToJson(_$HomeStateImpl instance) =>
    <String, dynamic>{
      'tiles': instance.tiles,
      'isLoading': instance.isLoading,
    };
