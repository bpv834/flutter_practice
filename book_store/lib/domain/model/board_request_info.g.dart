// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'board_request_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BoardRequestInfoImpl _$$BoardRequestInfoImplFromJson(
        Map<String, dynamic> json) =>
    _$BoardRequestInfoImpl(
      title: json['title'] as String,
      content: json['content'] as String,
      image: json['image'] as String?,
      likeCount: json['likeCount'] as int,
      replyCount: json['replyCount'] as int,
      userId: json['userId'] as int,
    );

Map<String, dynamic> _$$BoardRequestInfoImplToJson(
        _$BoardRequestInfoImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'content': instance.content,
      'image': instance.image,
      'likeCount': instance.likeCount,
      'replyCount': instance.replyCount,
      'userId': instance.userId,
    };
