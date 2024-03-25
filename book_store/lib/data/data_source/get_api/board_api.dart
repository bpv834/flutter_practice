import 'package:http/http.dart' as http;

class BoardApi {
  //전체서점 uri
  static const baseUrl =
      'http://43.200.217.158:8080/bookstore-0.0.1-SNAPSHOT';
  final http.Client _client;

  //생성자를 받아 하는이유: 테스트 코드에서 테스트 클라이언트를 넣기 위함
  // :뒤는 바디부분으로 생성자를 받아 _client에 대입하는데 대입하는 client가 널이면 기본클라를 대입한다.
  BoardApi({http.Client? client}) : _client = (client ?? http.Client());

  Future<http.Response> getBoard(int boardId ,int userId) async {
    return await _client.get(Uri.parse('$baseUrl/board/$boardId/$userId'));
  }

  Future<http.Response> getBoardList(int userId) async {
    return await _client.get(Uri.parse('$baseUrl/board/all/$userId'));
  }

  Future<http.Response> getBoardReply(int boarId) async{
    return await _client.get(Uri.parse('$baseUrl/reply?boardId=$boarId'));
  }

  Future<http.Response> getInterestBoardList(int userId) async {
    return await _client.get(Uri.parse('$baseUrl/board/heart?id=$userId'));
  }

  Future<http.Response> getBestBoardList() async {
    return await _client.get(Uri.parse('$baseUrl/board/best'));
  }
}
