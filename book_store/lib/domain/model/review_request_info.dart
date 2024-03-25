import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'review_request_info.freezed.dart';

part 'review_request_info.g.dart';

@freezed
class ReviewRequestInfo with _$ReviewRequestInfo {
  const factory ReviewRequestInfo({
     required String? content,
     required String? image,
     required int? userId,
     required int? bookStoreId,
  }) = _ReviewRequestInfo;
  
  factory ReviewRequestInfo.fromJson(Map<String, Object?> json) => _$ReviewRequestInfoFromJson(json); 
}