import 'dart:async';
import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:image_search_review/presentation/home/home_ui_event.dart';

import '../../data/data_source/result.dart';
import '../../domain/model/photo.dart';
import '../../domain/repository/photo_api_repository.dart';

class HomeViewModel with ChangeNotifier {
  final PhotoApiRepository repository;
  List<Photo> _photos = [];

  UnmodifiableListView<Photo> get photos => UnmodifiableListView(_photos);

  final _eventController = StreamController<HomeUiEvent>();

  Stream<HomeUiEvent> get eventStream => _eventController.stream;

  HomeViewModel({required this.repository});

  fetch(String query) async {
    final Result<List<Photo>> result = await repository.fetch(query);

    result.when(
        Success: (photos) {
          _photos = photos;
          notifyListeners();
        },
        error: (message) {
          _eventController.add(HomeUiEvent.showSnackBar(message));
        });
  }
}
