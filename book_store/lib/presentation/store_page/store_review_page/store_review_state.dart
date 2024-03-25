import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

import '../../../domain/model/review_response_info.dart';

part 'store_review_state.freezed.dart';

part 'store_review_state.g.dart';

@freezed
class StoreReviewState with _$StoreReviewState {
  const factory StoreReviewState({
    @Default([])  List<ReviewResponseInfo> reviewList,
    @Default(true) bool isLoading,
  }) = _StoreReviewState;

  factory StoreReviewState.fromJson(Map<String, Object?> json) =>
      _$StoreReviewStateFromJson(json);
}
