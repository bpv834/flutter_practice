import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'book_mark_response_info.freezed.dart';

part 'book_mark_response_info.g.dart';

@freezed
class BookMarkResponseInfo with _$BookMarkResponseInfo {
  const factory BookMarkResponseInfo({
    required final int? id,
    required final String? name,
    required final String? category,
    required final String? address,
    required final String? image,
  }) = _BookMarkResponseInfo;
  
  factory BookMarkResponseInfo.fromJson(Map<String, Object?> json) => _$BookMarkResponseInfoFromJson(json); 
}