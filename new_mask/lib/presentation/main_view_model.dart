import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:new_mask/domain/usecase/get_near_by_stores_use_case.dart';
import 'package:new_mask/presentation/main_state.dart';

@injectable
class MainViewModel with ChangeNotifier{
  final GetNearByStoresUseCase _getNearByStoresUseCase;

  MainViewModel(this._getNearByStoresUseCase){
    getStores();
  }
  MainState _state = const MainState();

  MainState get state => _state;

  Future<void> getStores() async {
    _state = state.copyWith(isLoading: true);
    notifyListeners();

    _state = state.copyWith(
      stores: await _getNearByStoresUseCase.execute(),
      isLoading: false,
    );
    notifyListeners();

  }
}