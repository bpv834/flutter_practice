import 'package:http/http.dart' as http;

class DeleteBoard{
  Future<void> deleteBoard(int id) async {
    String url = 'http://43.200.217.158:8080/bookstore-0.0.1-SNAPSHOT/board/$id/delete'; // 실제 엔드포인트 URL로 변경해야 합니다.
    try {
      final response = await http.delete(
        Uri.parse(url),
        // 추가적인 설정이 필요하다면 여기에 작성하세요.
      );

      if (response.statusCode == 200) {
        // 성공적으로 삭제되었을 때 수행할 작업
        print('게시물 삭제 완료');
      } else {
        // 삭제 실패시 처리
        print('게시물 삭제 실패');
      }
    } catch (error) {
      // 요청이 실패한 경우 예외 처리
      print('요청 실패: $error');
    }
  }
}