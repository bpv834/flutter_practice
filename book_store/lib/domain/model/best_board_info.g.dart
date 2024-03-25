// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'best_board_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BestBoardInfoImpl _$$BestBoardInfoImplFromJson(Map<String, dynamic> json) =>
    _$BestBoardInfoImpl(
      id: json['id'] as int,
      title: json['title'] as String,
      content: json['content'] as String,
      likeCount: json['likeCount'] as int,
      replyCount: json['replyCount'] as int,
      nickname: json['nickname'] as String,
    );

Map<String, dynamic> _$$BestBoardInfoImplToJson(_$BestBoardInfoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'content': instance.content,
      'likeCount': instance.likeCount,
      'replyCount': instance.replyCount,
      'nickname': instance.nickname,
    };
