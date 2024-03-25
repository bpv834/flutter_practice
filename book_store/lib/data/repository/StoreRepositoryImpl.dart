import 'dart:convert';

import 'package:book_store/domain/model/blog_info.dart';
import 'package:book_store/domain/model/book_mark_response_info.dart';
import 'package:book_store/domain/model/simple_store.dart';
import 'package:book_store/domain/model/store_info.dart';
import 'package:book_store/domain/repository/store_repository.dart';
import 'package:flutter/cupertino.dart';

import '../data_source/get_api/map_api.dart';
import '../data_source/get_api/store_api.dart';

class StoreRepositoryImpl implements StoreRepository {
  final StoreApi _api;
  final MapApi _mapApi;

  StoreRepositoryImpl(this._api, this._mapApi);

  @override
  Future<StoreInfo> getStoreInfo(int id) async {
    try {
      final response = await _api.getStoreInfo(id);

      if (response.statusCode == 200) {
        final jsonData = jsonDecode(utf8.decode(response.bodyBytes));
        // Assuming 'data' is a JSON object with relevant store information
        final storeData = jsonData['data'];
        final decodeData = jsonDecode(storeData);
        // Create a StoreInfo object from the retrieved data
        StoreInfo storeInfo = StoreInfo.fromJson(decodeData);
        return storeInfo;
      } else {
        throw Exception(
            "@1@:Failed to fetch store info. Status code: ${response
                .statusCode}");
      }
    } catch (e) {
      throw Exception("@2@Failed to fetch store info: $e");
    }
  }

  @override
  Future<List<SimpleStore>> getStores(String? query) async {
    try {
      final response = await _api.getStores(query);
      if (response.statusCode == 200) {
        final jsonResult = jsonDecode(utf8.decode(response.bodyBytes));
        final jsonDataListString = jsonResult['data'];
        // Check if jsonDataListString is not null and is a string
        if (jsonDataListString != null) {
          if (jsonDataListString is String) {
            // Parse the string into a list of maps
            final jsonDataList = jsonDecode(jsonDataListString) as List;

            // Map each item in the list to a SimpleStore object
            List<SimpleStore> simpleStores = jsonDataList.map((jsonStore) {
              return SimpleStore.fromJson(jsonStore as Map<String, dynamic>);
            }).toList();
            return simpleStores;
          } else {
            debugPrint('Error: jsonDataListString is not a String');
          }
        } else {
          debugPrint('Error: jsonDataListString is null');
        }

        // Return an empty list if jsonDataListString is null or not a string
        return [];
      } else {
        debugPrint('Error: Status code is not 200 (${response.statusCode})');
        throw Exception(
            "Failed to fetch store info. Status code: ${response.statusCode}");
      }
    } catch (e) {
      debugPrint('Error: $e');
      throw Exception("Failed to fetch store info: $e");
    }
  }

  @override
  Future<Map<String, double>> getLatLongFromAddress(String address) async {
    final response = await _mapApi.getLatLongFromAddress(address);
    if (response.statusCode == 200) {
      final decoded = json.decode(response.body);

      if (decoded['status'] == 'OK') {
        final locations = decoded['addresses'];

        if (locations != null && locations.isNotEmpty) {
          final firstLocation = locations[0];
          final double? lat = double.tryParse(firstLocation['y']);
          final double? lng = double.tryParse(firstLocation['x']);

          if (lat != null && lng != null) {
            return {'latitude': lat, 'longitude': lng};
          } else {
            throw '111111111Failed to parse latitude or longitude';
          }
        } else {
          debugPrint('주소 변환 실패 주소: $address');
          return {'latitude': 0, 'longitude': 0};// 위치 정보를 찾을 수 없는 경우 예외를 던집니다.
        }
      } else {
        throw '3333333Error: ${decoded['message']}';
      }
    } else {
      throw '4444444444444444Failed to load location data: ${response.statusCode}';
    }
  }

  @override
  Future<List<BlogInfo>> getBlogReview(int blogId) async {
    debugPrint('블로그 Id : $blogId');
    final response = await _api.getBlogReview(blogId);

    if (response.statusCode == 200) {
      final jsonResult = jsonDecode(utf8.decode(response.bodyBytes));
      final jsonDataListString = jsonResult['data'];
      final jsonDataList = jsonDecode(jsonDataListString) as List;

      List<BlogInfo> returnBlog=[];
      for (var blog in jsonDataList) {
        Map<String,dynamic> decodeBlog= blog;
        BlogInfo blogInfo =BlogInfo.fromJson(decodeBlog);
        returnBlog.add(blogInfo);
      }
      return returnBlog;
    } else {
      throw Exception('Failed to get blogInfo');
    }
  }

  @override
  Future<List<SimpleStore>> getNearByStores(double lat, double lng) async{
    try {
      final response = await _api.getNearByStores(lat, lng);

      if (response.statusCode == 200) {
        final jsonResult = jsonDecode(utf8.decode(response.bodyBytes));
        final jsonDataListString = jsonResult['data'];
        // Check if jsonDataListString is not null and is a string
        if (jsonDataListString != null) {
          if (jsonDataListString is String) {
            // Parse the string into a list of maps
            final jsonDataList = jsonDecode(jsonDataListString) as List;

            // Map each item in the list to a SimpleStore object
            List<SimpleStore> simpleStores = jsonDataList.map((jsonStore) {
              return SimpleStore.fromJson(jsonStore as Map<String, dynamic>);
            }).toList();
            return simpleStores;
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


  @override
  Future<List<SimpleStore>> getNearByStoresWithRadius(double lat, double lng, int radius) async{
    try {
      final response = await _api.getNearByStoresWithRadius(lat, lng ,radius);

      if (response.statusCode == 200) {
        final jsonResult = jsonDecode(utf8.decode(response.bodyBytes));
        final jsonDataListString = jsonResult['data'];
        // Check if jsonDataListString is not null and is a string
        if (jsonDataListString != null) {
          if (jsonDataListString is String) {
            // Parse the string into a list of maps
            final jsonDataList = jsonDecode(jsonDataListString) as List;

            // Map each item in the list to a SimpleStore object
            List<SimpleStore> simpleStores = jsonDataList.map((jsonStore) {
              return SimpleStore.fromJson(jsonStore as Map<String, dynamic>);
            }).toList();
            return simpleStores;
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

  @override
  Future<List<SimpleStore>> getBookMarkList(int userId) async{
    try {
      print('StoreRepository => getBookMarkList 실행');
      final response = await _api.getBookMarkList(userId);

      if (response.statusCode == 200) {
        final jsonResult = jsonDecode(utf8.decode(response.bodyBytes));
        final jsonDataListString = jsonResult['data'];
        // Check if jsonDataListString is not null and is a string
        if (jsonDataListString != null) {
          if (jsonDataListString is String) {
            // Parse the string into a list of maps
            final jsonDataList = jsonDecode(jsonDataListString) as List;

            // Map each item in the list to a SimpleStore object
            List<SimpleStore> bookMarkList = jsonDataList.map((jsonStoreBookMark) {
              return SimpleStore.fromJson(jsonStoreBookMark as Map<String, dynamic>);
            }).toList();
            return bookMarkList;
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