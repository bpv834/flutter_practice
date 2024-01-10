import 'package:book_store/presentation/login_page/login_platform.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class CustomerInfoViewModel with ChangeNotifier {
  int? _token;
  double? _screenHeight;
  double? _screenWidth;
  String? nickname;
  String? category;
  String? age;
  String? _profileImageUrl;
  LoginPlatform? _loginPlatform;
  double _lat = 32.1234;
  double _long = 88.8888;
  Position? _position;


  void setId(int? id) {
    _token = id;
    notifyListeners();
  }

  void setProfileImageUrl(String? profileImageUrl) {
    _profileImageUrl = profileImageUrl;
    notifyListeners();
  }

  void setPlatform(LoginPlatform? platform) {
    _loginPlatform = platform;
    notifyListeners();
  }

  void setScreenHeight(double value) {
    _screenHeight = value;
    notifyListeners();
  }

  void setScreenWidth(double value) {
    _screenWidth = value;
    notifyListeners();
  }
  // 위치 정보를 설정하고 알림을 보내는 메서드
  void setCurrentLocation(double latitude, double longitude) {
    _lat = latitude;
    _long = longitude;
    notifyListeners();
  }

  int get token => _token ?? 0;

  LoginPlatform get loginPlatform => _loginPlatform ?? LoginPlatform.none;

  double get screenWidth => _screenWidth ?? 300;

  double get screenHeight => _screenHeight ?? 700;

  String get profileImageUrl => _profileImageUrl ?? '';

  double get lat => _lat ?? 0;

  double get long => _long ?? 0;



}
