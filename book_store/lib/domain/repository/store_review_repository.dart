import 'package:book_store/domain/model/review_response_info.dart';

abstract class StoreReviewRepository{
  Future<List<ReviewResponseInfo>> getReviewList(int boardId);

}