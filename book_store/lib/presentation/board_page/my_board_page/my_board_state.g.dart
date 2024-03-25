// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_board_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MyBoardStateImpl _$$MyBoardStateImplFromJson(Map<String, dynamic> json) =>
    _$MyBoardStateImpl(
      barName: json['barName'] as String? ?? '내가 쓴 게시글',
      boardList: (json['boardList'] as List<dynamic>?)
              ?.map((e) => BoardInfo.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      isLoading: json['isLoading'] as bool? ?? false,
    );

Map<String, dynamic> _$$MyBoardStateImplToJson(_$MyBoardStateImpl instance) =>
    <String, dynamic>{
      'barName': instance.barName,
      'boardList': instance.boardList,
      'isLoading': instance.isLoading,
    };
