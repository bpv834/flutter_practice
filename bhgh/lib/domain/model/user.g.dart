// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      email: json['email'] as String? ?? 'email',
      name: json['name'] as String? ?? 'name',
      rrn: json['rrn'] as String? ?? 'rrn',
      gender: json['gender'] as String? ?? 'gender',
      mainHabit: json['mainHabit'] as String? ?? 'mainHabit',
      age: (json['age'] as num?)?.toInt() ?? 0,
      habits: (json['habits'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'name': instance.name,
      'rrn': instance.rrn,
      'gender': instance.gender,
      'mainHabit': instance.mainHabit,
      'age': instance.age,
      'habits': instance.habits,
    };
