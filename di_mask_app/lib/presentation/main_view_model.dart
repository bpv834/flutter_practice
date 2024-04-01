import 'package:di_mask_app/domain/usecase/get_near_by_stores_use_case.dart';
import 'package:di_mask_app/presentation/main_state.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@injectable
class MainViewModel with ChangeNotifier {
  final GetNearByStoresUseCase _getNearByStoresUseCase;

  MainState _state = const MainState();

  MainState get state => _state;

  MainViewModel(this._getNearByStoresUseCase){
    getStores();
  }

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
