import 'package:bhgh/domain/model/user.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';

import '../../domain/repository/user_repository.dart';

@Singleton(as: UserRepository)
class UserRepositoryImpl implements UserRepository{
  @override
  Future<List<User>> getUsers() async {
    FirebaseFirestore _firestore = FirebaseFirestore.instance;
    QuerySnapshot<Map<String, dynamic>> _snapshot =
        await _firestore.collection("users").get();
    List<User> result =
    _snapshot.docs.map((e) => User.fromJson(e.data())).toList();
    return result;
  }
}