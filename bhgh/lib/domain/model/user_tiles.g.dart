// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_tiles.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserTilesImpl _$$UserTilesImplFromJson(Map<String, dynamic> json) =>
    _$UserTilesImpl(
      tileId: json['tileId'] as String? ?? 'tileId',
      name: json['name'] as String? ?? 'name',
      age: (json['age'] as num?)?.toInt() ?? 0,
      gender: json['gender'] as String? ?? 'gender',
      mainHabit: json['mainHabit'] as String? ?? '악습관없음',
      habits: (json['habits'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      likeCount: (json['likeCount'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$UserTilesImplToJson(_$UserTilesImpl instance) =>
    <String, dynamic>{
      'tileId': instance.tileId,
      'name': instance.name,
      'age': instance.age,
      'gender': instance.gender,
      'mainHabit': instance.mainHabit,
      'habits': instance.habits,
      'likeCount': instance.likeCount,
    };
