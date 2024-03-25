import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:image_picker/image_picker.dart';

class ShotImage{
  Future<Map<String, dynamic>?> postImage(XFile imageFile) async {
    try {

      // Dio 인스턴스 생성
      Dio dio = Dio();

      // 멀티파트 요청 생성
      var formData = FormData.fromMap({});

      // 이미지 파일을 읽어와 FormData에 추가
      formData.files.add(MapEntry(
        'image',
        await MultipartFile.fromFile(imageFile.path),
      ));
      print('formData.files: ${formData.files}');

      // Dio를 사용하여 POST 요청 보내기
      Response response = await dio.post(
        'http://43.200.217.158:8080/bookstore-0.0.1-SNAPSHOT/image',
        data: formData,
        options: Options(
          headers: {
            HttpHeaders.contentTypeHeader: 'multipart/form-data',
          },
        ),
      );

      // 응답 확인
      if (response.statusCode == 200) {
        // Return a map with the JSON-encoded string
        return {'image': jsonEncode(response.data)};
      } else {
        print('response.statusCode: ${response.statusCode}');
        throw Exception("Failed to send data");
      }
    } catch (e) {
      print("Failed to send post data: $e");
      return null;
    }
  }

}