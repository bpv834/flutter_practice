import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:image_search/data/data_source/result.dart';

class PixabayApi {
  final http.Client client;

  PixabayApi(this.client);

  Future<Result<Iterable>> fetch(String query) async {
    try {
      final response = await client.get(Uri.parse('https://pixabay.com/api/'
          '?key=39736546-267efd0798a650266d024ff39&q=$query&image_type=photo'));
      Iterable hits = jsonDecode(response.body)['hits'];
      //클래스.success는 factory 생성자 문법
      return Result.success(hits);
    } catch (e) {
      return Result.error('네트워크 에러');
    }
  }
}
