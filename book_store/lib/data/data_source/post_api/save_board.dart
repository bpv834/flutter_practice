import 'dart:convert';

import 'package:book_store/domain/model/board_request_info.dart';
import 'package:http/http.dart' as http;
class SaveBoard{
  Future<void> saveBoard(BoardRequestInfo boardRequestInfo) async {
    try {
      //toJson된 객체를 encode해서 스트링타입으로 만든 후 post body에 넣어 보냄
      final jsonData = boardRequestInfo.toJson();
      final jsonString = json.encode(jsonData);


      final response = await http.post(
          Uri.parse("http://43.200.217.158:8080/bookstore-0.0.1-SNAPSHOT/board"),
          headers: {
            'Content-Type': 'application/json; charset=UTF-8',
          },
          //body에는 반드시 문자열이나 바이트 데이터를 전달해야 합니다.
          body: jsonString
      );
      if (response.statusCode != 200) {
        throw Exception("Failed to send data");
      } else {
        print("Board Data sent successfully");
      }
    } catch (e) {
      print("Failed to send post data: $e");

    }
  }
}