import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:image_search/data/photo_api_repository.dart';

import '../model/Photo.dart';

class PixabayApi implements PhotoApiRepository{
  @override
  Future<List<Photo>> fetch(String query,{http.Client? client}) async {
    //client를 지정해주면 지정된 client사용하고 특별히 지정 안하면, http.client를 사용한다. Test를 하기 위함
    client??=http.Client();
    final response = await client.get(Uri.parse('https://pixabay.com/api/'
        '?key=39736546-267efd0798a650266d024ff39&q=$query&image_type=photo'));
    Iterable hits = jsonDecode(response.body)['hits'];
    return hits.map((e) => Photo.fromJson(e)).toList();
  }
}
