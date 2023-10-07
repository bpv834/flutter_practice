import 'dart:async';
import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:image_search/data/photo_api_repository.dart';
import 'package:image_search/data/pixabay_api.dart';
import 'package:provider/provider.dart';

import '../model/Photo.dart';

class HomeViewModel with ChangeNotifier{
  final PhotoApiRepository repository;
  HomeViewModel(this.repository);
  List<Photo> _photos=[];

  // List<Photo> get photos => _photos; 를 수정못하도록 unmodifiableListview클래스를 활용 homeScreen에서 .add나 .clear 같은 메서드 실행시 예외처리
  UnmodifiableListView<Photo> get photos => UnmodifiableListView(_photos);
  Future<void>fetch(String query) async{
    final result = await repository.fetch(query);
    _photos=result;
    notifyListeners();
  }

}