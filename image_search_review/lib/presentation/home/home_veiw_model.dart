import 'dart:async';
import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:image_search_review/domain/use_case/get_photo_use_case.dart';
import 'package:image_search_review/presentation/home/home_state.dart';
import 'package:image_search_review/presentation/home/home_ui_event.dart';

import '../../data/data_source/result.dart';
import '../../domain/model/photo.dart';
import '../../domain/repository/photo_api_repository.dart';

class HomeViewModel with ChangeNotifier {
  final GetPhotoUseCase getPhotoUseCase;
  HomeState _state = HomeState([],false);

  HomeState get state => _state;

  final _eventController = StreamController<HomeUiEvent>();

  Stream<HomeUiEvent> get eventStream => _eventController.stream;

  HomeViewModel({required this.getPhotoUseCase});

  fetch(String query) async {
    _state=state.copyWith(isLoading: true);
    notifyListeners();
    final Result<List<Photo>> result = await getPhotoUseCase(query);

    result.when(Success: (photos) {
      _state = state.copyWith(photos: photos);
      notifyListeners();
    }, error: (message) {
      _eventController.add(HomeUiEvent.showSnackBar(message));
    });
    _state=state.copyWith(isLoading: false);
    notifyListeners();
  }
}
