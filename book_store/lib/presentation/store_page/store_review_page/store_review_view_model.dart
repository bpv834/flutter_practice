import 'package:book_store/domain/model/review_response_info.dart';
import 'package:book_store/domain/repository/store_review_repository.dart';
import 'package:book_store/presentation/store_page/store_review_page/store_review_state.dart';
import 'package:flutter/material.dart';

class StoreReviewViewModel with ChangeNotifier{
  final StoreReviewRepository storeReviewRepository;

  StoreReviewViewModel({required this.storeReviewRepository});

  var _state =  const StoreReviewState();

  get state => _state;

  Future<void> getReviewList(int boardId)async{
    List<ReviewResponseInfo> reviewList = await storeReviewRepository.getReviewList(boardId);
    _state =_state.copyWith(reviewList: reviewList, isLoading: false);
    notifyListeners();
  }
}