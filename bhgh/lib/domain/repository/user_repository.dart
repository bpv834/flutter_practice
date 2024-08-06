import 'package:bhgh/domain/model/user.dart';

abstract interface class UserRepository{
Future<List<User>> getUsers();
}