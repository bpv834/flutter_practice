// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reply_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReplyInfoImpl _$$ReplyInfoImplFromJson(Map<String, dynamic> json) =>
    _$ReplyInfoImpl(
      replyId: json['id'] as int?,
      replyContent: json['content'] as String,
      createdDate: json['createdDate'] as String?,
      modifiedDate: json['modifiedDate'] as String?,
      boardId: json['boardId'] as int,
      userId: json['userId'] as int,
    );

Map<String, dynamic> _$$ReplyInfoImplToJson(_$ReplyInfoImpl instance) =>
    <String, dynamic>{
      'id': instance.replyId,
      'content': instance.replyContent,
      'createdDate': instance.createdDate,
      'modifiedDate': instance.modifiedDate,
      'boardId': instance.boardId,
      'userId': instance.userId,
    };
