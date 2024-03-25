import 'package:http/http.dart' as http;

class UserInfoApi {
  //전체서점 uri
  static const baseUrl =
      'http://43.200.217.158:8080/bookstore-0.0.1-SNAPSHOT/user';
  final http.Client _client;

  //생성자를 받아 하는이유: 테스트 코드에서 테스트 클라이언트를 넣기 위함
  // :뒤는 바디부분으로 생성자를 받아 _client에 대입하는데 대입하는 client가 널이면 기본클라를 대입한다.
  UserInfoApi({http.Client? client}) : _client = (client ?? http.Client());

  Future<http.Response> getUser(int id) async {
    return await _client.get(Uri.parse('$baseUrl/$id'));
  }
}
