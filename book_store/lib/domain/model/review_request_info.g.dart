// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review_request_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReviewRequestInfoImpl _$$ReviewRequestInfoImplFromJson(
        Map<String, dynamic> json) =>
    _$ReviewRequestInfoImpl(
      content: json['content'] as String?,
      image: json['image'] as String?,
      userId: json['userId'] as int?,
      bookStoreId: json['bookStoreId'] as int?,
    );

Map<String, dynamic> _$$ReviewRequestInfoImplToJson(
        _$ReviewRequestInfoImpl instance) =>
    <String, dynamic>{
      'content': instance.content,
      'image': instance.image,
      'userId': instance.userId,
      'bookStoreId': instance.bookStoreId,
    };
