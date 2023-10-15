import 'dart:async';
import 'package:flutter/material.dart';
import 'package:image_search/domain/use_case/get_photos_use_case.dart';
import 'package:image_search/presentation/home/home_state.dart';
import 'package:image_search/presentation/home/home_ui_event.dart';
import '../../data/data_source/result.dart';
import '../../domain/model/Photo.dart';
import '../../domain/repository/photo_api_repository.dart';
//Repository를 직접 접근하면 안됨, useCase를 사용해야 함
//viewModel은 인터페이스 역할만 해줘야 함, 복잡한 로직은 useCase에서 구현
class HomeViewModel with ChangeNotifier {
  final GetPhotosUseCase getPhotosUseCase;
  HomeViewModel(this.getPhotosUseCase);

  HomeState _state = HomeState([], false);

  HomeState get state => _state;

  final _eventController = StreamController<HomeUiEvent>();

  Stream<HomeUiEvent> get eventStream => _eventController.stream;

  Future<void> fetch(String query) async {
    //불변 객체기 때문에 같은 객체에 원하는 값을 변경한 객체를 생성해서 변수에 할당해줌
    _state =state.copyWith(isLoading: true);
    notifyListeners();
    //call메서드를 실행함, call은 생략 가능해서 가독성을 올려줌 getPhotosUseCase.call(query)-> getPhotosUseCase(query);
    final Result<List<Photo>> result = await getPhotosUseCase(query);
    result.when(success: (photos)  {
      _state=state.copyWith(photos: photos);
      notifyListeners();
    }, error: (message) {
      _eventController.add(HomeUiEvent.showSnackBar(message));
    });
    _state =state.copyWith(isLoading: false);
    notifyListeners();
  }
}
