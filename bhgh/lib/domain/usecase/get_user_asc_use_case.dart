import 'package:bhgh/domain/model/user.dart';
import 'package:injectable/injectable.dart';

import '../repository/user_repository.dart';

@singleton
class GetUserAscUseCase {
  final UserRepository _userRepository;

  GetUserAscUseCase(this._userRepository);

  Future<List<User>> execute() async {
    final users = await _userRepository.getUsers();
    print('users = $users');
    return users;
  }
}
