import 'dart:convert';

import 'package:book_store/data/data_source/get_api/user_info_api.dart';
import 'package:book_store/domain/model/user_info.dart';
import 'package:book_store/domain/repository/user_repository.dart';
import 'package:flutter/material.dart';

class UserRepositoryImpl implements UserRepository{
  final UserInfoApi _userInfoApi;

  UserRepositoryImpl({required UserInfoApi userApi}) : _userInfoApi = userApi;

  @override
  Future<UserInfo> getUser(int id) async{
    try {
      final response = await _userInfoApi.getUser(id);
      if (response.statusCode == 200) {
        final jsonResult = jsonDecode(utf8.decode(response.bodyBytes));
        final jsonDataListString = jsonResult['data'];
        // Check if jsonDataListString is not null and is a string
        if (jsonDataListString != null) {
          if (jsonDataListString is String) {
            // Parse the string into a list of maps
            final jsonDataList = jsonDecode(jsonDataListString);

            // Map each item in the list to a SimpleStore object
            UserInfo userInfo = UserInfo.fromJson(jsonDataList);
            print('userInfo: $userInfo');
            return userInfo;
          } else {
            debugPrint('111111111111Error: jsonDataListString is not a String');
            return UserInfo(id: id, nickname: 'nickname', age: 1,category: '');
          }
        } else {
          debugPrint('2222222222222Error: jsonDataListString is null');
          return UserInfo(id: id, nickname: 'nickname', age: 1);

        }

      } else {
        debugPrint('333333333333333333Error: Status code is not 200 (${response.statusCode})');
        throw Exception(
            "Failed to fetch store info. Status code: ${response.statusCode}");
      }
    } catch (e) {
      debugPrint('444444444444444444Error: $e');
      throw Exception("444444444444444444444444Failed to fetch store info: $e");
    }
  }

}