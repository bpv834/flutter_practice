import 'package:bhgh/data/repository/user_repository_impl.dart';
import 'package:bhgh/domain/usecase/get_user_asc_use_case.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final useCase = GetUserAscUseCase(UserRepositoryImpl());

  test('유저를 가져와야 함', () async {
    final users = await useCase.execute();
    expect(users[0].email, 'yungjoon2@naver.com');
  });
}
