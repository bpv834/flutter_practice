import 'package:bhgh/domain/model/user_tiles.dart';

abstract interface class TilesRepository{
  Future<List<UserTiles>> getTiles();
}