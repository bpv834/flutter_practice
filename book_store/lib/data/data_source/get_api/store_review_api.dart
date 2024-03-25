import 'package:http/http.dart' as http;

class StoreReviewApi{
  static const baseUrl = 'http://43.200.217.158:8080/bookstore-0.0.1-SNAPSHOT';
  final http.Client _client;


  //생성자를 받아 하는이유: 테스트 코드에서 테스트 클라이언트를 넣기 위함
  // :뒤는 바디부분으로 생성자를 받아 _client에 대입하는데 대입하는 client가 널이면 기본클라를 대입한다.
  StoreReviewApi({http.Client? client}) : _client = (client ?? http.Client());

  Future<http.Response> getReviewList(int boardId) async {
    print('boardId: $boardId');
    return await _client.get(
        Uri.parse('$baseUrl/review?bookStoreId=$boardId'));
  }

}