import 'dart:async';
import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:image_search/data/repository/photo_api_repository_impl.dart';
import 'package:image_search/presentation/home/home_ui_event.dart';
import 'package:provider/provider.dart';

import '../../data/data_source/result.dart';
import '../../domain/model/Photo.dart';
import '../../domain/repository/photo_api_repository.dart';

class HomeViewModel with ChangeNotifier {
  final PhotoApiRepository repository;

  HomeViewModel(this.repository);
  final _eventController = StreamController<HomeUiEvent>();
  Stream<HomeUiEvent> get eventStream => _eventController.stream;
  List<Photo> _photos = [];

  // List<Photo> get photos => _photos; 를 수정못하도록 unmodifiableListview클래스를 활용 homeScreen에서 .add나 .clear 같은 메서드 실행시 예외처리
  UnmodifiableListView<Photo> get photos => UnmodifiableListView(_photos);

  Future<void> fetch(String query) async {
    final Result<List<Photo>> result = await repository.fetch(query);
    result.when(
        success: (photos) {
          _photos = photos;
          notifyListeners();
        },
        error: (message) {
          _eventController.add(HomeUiEvent.showSnackBar(message));
        });
  }
}
