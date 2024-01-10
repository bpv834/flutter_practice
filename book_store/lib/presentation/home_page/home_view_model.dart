import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

import '../../core/customer_info_view_model.dart';

class HomeViewModel with ChangeNotifier{
  var _currentPage=0;

  get currentPage => _currentPage;

  set setCurrentPage(int value) {
    _currentPage = value;
    notifyListeners();
  }


}
