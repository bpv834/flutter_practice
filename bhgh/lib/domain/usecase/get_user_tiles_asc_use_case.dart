
import 'package:bhgh/domain/model/user_tiles.dart';
import 'package:bhgh/domain/repository/tiles_repository.dart';
import 'package:injectable/injectable.dart';

@singleton
class GetUserTilesAscUseCase {
  final TilesRepository _tilesRepository;

  GetUserTilesAscUseCase(this._tilesRepository);

  Future<List<UserTiles>> execute() async {
    final tiles = await _tilesRepository.getTiles();
    print('위치 : GetUserTilesAscUseCase/tiles = $tiles');
    return tiles;
  }

}
