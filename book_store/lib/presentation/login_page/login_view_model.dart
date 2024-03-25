import 'package:book_store/domain/repository/user_repository.dart';
import 'package:flutter/material.dart';
import 'dart:convert';

import 'package:http/http.dart' as http;

import '../../domain/model/user_info.dart';

class LoginViewModel with ChangeNotifier {
  final UserRepository userRepository;

  LoginViewModel({required this.userRepository});


  Future<UserInfo> getUserInfo(int id){
   return userRepository.getUser(id);
  }

}
