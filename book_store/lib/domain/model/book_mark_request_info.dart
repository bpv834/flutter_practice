import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'book_mark_request_info.freezed.dart';

part 'book_mark_request_info.g.dart';

@freezed
class BookMarkRequestInfo with _$BookMarkRequestInfo {
  const factory BookMarkRequestInfo({
    required final int? userId,
    required final int? bookStoreId,
  }) = _BookMarkRequestInfo;
  
  factory BookMarkRequestInfo.fromJson(Map<String, Object?> json) => _$BookMarkRequestInfoFromJson(json);
}