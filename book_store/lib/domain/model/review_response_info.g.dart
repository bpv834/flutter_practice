// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review_response_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReviewResponseInfoImpl _$$ReviewResponseInfoImplFromJson(
        Map<String, dynamic> json) =>
    _$ReviewResponseInfoImpl(
      reviewId: json['id'] as int?,
      reviewContent: json['content'] as String,
      image: json['image'] as String?,
      createDate: json['createDate'] as String?,
      modifiedDate: json['modifiedDate'] as String?,
      userId: json['userId'] as int?,
      nickName: json['nickname'] as String?,
      profileImage: json['profile_image'] as String?,
    );

Map<String, dynamic> _$$ReviewResponseInfoImplToJson(
        _$ReviewResponseInfoImpl instance) =>
    <String, dynamic>{
      'id': instance.reviewId,
      'content': instance.reviewContent,
      'image': instance.image,
      'createDate': instance.createDate,
      'modifiedDate': instance.modifiedDate,
      'userId': instance.userId,
      'nickname': instance.nickName,
      'profile_image': instance.profileImage,
    };
