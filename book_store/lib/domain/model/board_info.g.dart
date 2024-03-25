// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'board_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BoardInfoImpl _$$BoardInfoImplFromJson(Map<String, dynamic> json) =>
    _$BoardInfoImpl(
      boardId: json['id'] as int?,
      boardTitle: json['title'] as String?,
      boardContent: json['content'] as String?,
      boardImage: json['image'] as String?,
      likeCount: json['likeCount'] as int?,
      createdDate: json['createdDate'] as String?,
      modifiedDate: json['modifiedDate'] as String?,
      replyCount: json['replyCount'] as int?,
      userId: json['userId'] as int?,
      writer: json['nickname'] as String?,
    );

Map<String, dynamic> _$$BoardInfoImplToJson(_$BoardInfoImpl instance) =>
    <String, dynamic>{
      'id': instance.boardId,
      'title': instance.boardTitle,
      'content': instance.boardContent,
      'image': instance.boardImage,
      'likeCount': instance.likeCount,
      'createdDate': instance.createdDate,
      'modifiedDate': instance.modifiedDate,
      'replyCount': instance.replyCount,
      'userId': instance.userId,
      'nickname': instance.writer,
    };
