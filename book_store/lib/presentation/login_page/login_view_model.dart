import 'package:flutter/material.dart';

class LoginViewModel with ChangeNotifier{
int? _token;

int get token => _token??0;
void setToken(int? token) {
  _token = token;
  notifyListeners();
}
}