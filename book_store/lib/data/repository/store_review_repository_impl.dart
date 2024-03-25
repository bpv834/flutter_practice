import 'dart:convert';

import 'package:book_store/domain/model/review_response_info.dart';
import 'package:book_store/domain/repository/store_review_repository.dart';
import 'package:flutter/material.dart';

import '../data_source/get_api/store_review_api.dart';

class StoreReviewRepositoryImpl implements StoreReviewRepository{
  final StoreReviewApi _storeReviewApi;

  StoreReviewRepositoryImpl({required StoreReviewApi storeReviewApi}) : _storeReviewApi = storeReviewApi;

  @override
  Future<List<ReviewResponseInfo>> getReviewList(int boardId) async{
    try {
      print('StoreReviewRepository=>getReviewList');
      final response = await _storeReviewApi.getReviewList(boardId);

      if (response.statusCode == 200) {
        final jsonResult = jsonDecode(utf8.decode(response.bodyBytes));
        final jsonDataListString = jsonResult['data'];
        // Check if jsonDataListString is not null and is a string
        if (jsonDataListString != null) {
          if (jsonDataListString is String) {
            // Parse the string into a list of maps
            final jsonDataList = jsonDecode(jsonDataListString) as List;

            // Map each item in the list to a SimpleStore object
            List<ReviewResponseInfo> reviewList = jsonDataList.map((jsonReview) {
              return ReviewResponseInfo.fromJson(jsonReview as Map<String, dynamic>);
            }).toList();
            print('reviewList: $reviewList}');
            return reviewList;
          } else {
            debugPrint('1111111111Error: jsonDataListString is not a String');
          }
        } else {
          debugPrint('22222222222Error: jsonDataListString is null');
        }

        // Return an empty list if jsonDataListString is null or not a string
        return [];
      } else {
        debugPrint('333333333333Error: Status code is not 200 (${response.statusCode})');
        throw Exception(
            "444444444444444Failed to fetch store info. Status code: ${response.statusCode}");
      }
    } catch (e) {
      debugPrint('@@@@@2Error: $e');
      return [];
    }
  }
}