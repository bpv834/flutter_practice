import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:image_search_review/data/data_source/result.dart';

class PixabayApi {
  final http.Client client;

  PixabayApi(this.client);

  Future<Result<Iterable>> fetch(String query) async {
    try {
      final response = await client.get(
        Uri.parse(
            'https://pixabay.com/api/?key=39736546-267efd0798a650266d024ff39&'
            'q=$query&image_type=photo'),
      );
      Map<String, dynamic> jsonResponse = jsonDecode(response.body);
      Iterable hits = jsonResponse['hits'];
      return Result.Success(hits);
    } catch (e) {
      return Result.error('네트워크 에러');
    }
  }
}
