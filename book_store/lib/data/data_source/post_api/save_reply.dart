import 'dart:convert';

import 'package:book_store/domain/model/reply_info.dart';
import 'package:http/http.dart' as http;

class SaveReply{
   saveReply(ReplyInfo replyInfo) async {
    try {
      print('heartInfo: $replyInfo');
      //toJson된 객체를 encode해서 스트링타입으로 만든 후 post body에 넣어 보냄
      final jsonData = replyInfo.toJson();
      print('jsonData: $jsonData');

      final jsonString = json.encode(jsonData);
      print('jsonString: $jsonString');

      final response = await http.post(
          Uri.parse(
              "http://43.200.217.158:8080/bookstore-0.0.1-SNAPSHOT/reply"),
          headers: {
            'Content-Type': 'application/json; charset=UTF-8',
          },
          //body에는 반드시 문자열이나 바이트 데이터를 전달해야 합니다.
          body: jsonString);
      if (response.statusCode != 200) {
        throw Exception("1111111111Failed to send data");
      } else {
        final responseData = json.decode(response.body);
        print('responseData[data]: ${responseData['data']}');
        final value = responseData['data'];
        bool boolValue;
        if (value == 'true') {
          boolValue = true;
        } else {
          boolValue = false;
        }
        return boolValue;
      }
    } catch (e) {
      print("333333333333333Failed to send post data: $e");
    }
    return null;
  }
}