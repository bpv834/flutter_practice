import 'package:bhgh/domain/model/user_tiles.dart';
import 'package:bhgh/domain/repository/tiles_repository.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: TilesRepository)
class TilesRepositoryImpl implements TilesRepository{
  @override
  Future<List<UserTiles>> getTiles() async{
    FirebaseFirestore _firestore = FirebaseFirestore.instance;
    QuerySnapshot<Map<String, dynamic>> _snapshot =
        await _firestore.collection("tiles").get();
    List<UserTiles> result =
    _snapshot.docs.map((e) => UserTiles.fromJson(e.data())).toList();
    return result;
  }


}