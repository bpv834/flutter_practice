// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'blog_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BlogInfoImpl _$$BlogInfoImplFromJson(Map<String, dynamic> json) =>
    _$BlogInfoImpl(
      blogId: json['blogId'] as int?,
      blogTitle: json['title'] as String?,
      blogContent: json['content'] as String?,
      blogLink: json['link'] as String?,
      author: json['author'] as String?,
      blogName: json['name'] as String?,
      blogDate: json['blogDate'] as String?,
      storeId: json['storeId'] as int?,
    );

Map<String, dynamic> _$$BlogInfoImplToJson(_$BlogInfoImpl instance) =>
    <String, dynamic>{
      'blogId': instance.blogId,
      'title': instance.blogTitle,
      'content': instance.blogContent,
      'link': instance.blogLink,
      'author': instance.author,
      'name': instance.blogName,
      'blogDate': instance.blogDate,
      'storeId': instance.storeId,
    };
