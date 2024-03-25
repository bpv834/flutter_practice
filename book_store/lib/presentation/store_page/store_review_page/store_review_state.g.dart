// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_review_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StoreReviewStateImpl _$$StoreReviewStateImplFromJson(
        Map<String, dynamic> json) =>
    _$StoreReviewStateImpl(
      reviewList: (json['reviewList'] as List<dynamic>?)
              ?.map(
                  (e) => ReviewResponseInfo.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      isLoading: json['isLoading'] as bool? ?? true,
    );

Map<String, dynamic> _$$StoreReviewStateImplToJson(
        _$StoreReviewStateImpl instance) =>
    <String, dynamic>{
      'reviewList': instance.reviewList,
      'isLoading': instance.isLoading,
    };
