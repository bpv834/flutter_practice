import 'package:book_store/domain/model/blog_info.dart';
import 'package:book_store/domain/model/book_mark_response_info.dart';
import 'package:book_store/domain/model/simple_store.dart';
import 'package:book_store/domain/model/store_info.dart';

abstract class StoreRepository {
  Future<StoreInfo> getStoreInfo(int id);

  Future<List<SimpleStore>> getStores(String? query);

  Future<List<SimpleStore>> getNearByStores(double lat, double lng);

  Future<List<SimpleStore>> getNearByStoresWithRadius(double lat, double lng, int radius);

  Future<Map<String, double>> getLatLongFromAddress(String address);

  Future<List<BlogInfo>> getBlogReview(int blogId);

  Future<List<SimpleStore>> getBookMarkList(int userId);
}
