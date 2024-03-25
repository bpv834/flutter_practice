import 'package:book_store/domain/model/user_info.dart';

abstract class UserRepository{
  Future<UserInfo> getUser(int id);
}