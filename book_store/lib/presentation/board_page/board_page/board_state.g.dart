// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'board_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BoardStateImpl _$$BoardStateImplFromJson(Map<String, dynamic> json) =>
    _$BoardStateImpl(
      boardList: (json['boardList'] as List<dynamic>?)
              ?.map((e) => BoardInfo.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      isLoading: json['isLoading'] as bool? ?? false,
    );

Map<String, dynamic> _$$BoardStateImplToJson(_$BoardStateImpl instance) =>
    <String, dynamic>{
      'boardList': instance.boardList,
      'isLoading': instance.isLoading,
    };
