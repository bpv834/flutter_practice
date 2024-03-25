// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'board_detail_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BoardDetailInfoImpl _$$BoardDetailInfoImplFromJson(
        Map<String, dynamic> json) =>
    _$BoardDetailInfoImpl(
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
      isLike: json['isLike'] as bool? ?? false,
      writerProfileImage: json['profile_image'] as String?,
    );

Map<String, dynamic> _$$BoardDetailInfoImplToJson(
        _$BoardDetailInfoImpl instance) =>
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
      'isLike': instance.isLike,
      'profile_image': instance.writerProfileImage,
    };
