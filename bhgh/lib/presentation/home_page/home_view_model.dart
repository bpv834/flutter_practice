import 'package:bhgh/domain/model/user_tiles.dart';
import 'package:bhgh/domain/usecase/get_user_asc_use_case.dart';
import 'package:bhgh/domain/usecase/get_user_tiles_asc_use_case.dart';
import 'package:bhgh/presentation/home_page/home_state.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';


@injectable
class HomeViewModel with ChangeNotifier {
  final GetUserAscUseCase _getUserAscUseCase;

  final GetUserTilesAscUseCase _getUserTilesAscUseCase;

  HomeState _state = const HomeState();

  HomeState get state => _state;

  HomeViewModel(this._getUserAscUseCase, this._getUserTilesAscUseCase) {
    _getUserAscUseCase.execute();
    _getUserTilesAscUseCase.execute();
    _getTiles();
  }
  Future<void> _getTiles() async{
    List<UserTiles> tiles = await _getUserTilesAscUseCase.execute();
    _state = _state.copyWith(isLoading: true,tiles: tiles);
    notifyListeners();
  }
}
