import 'dart:convert';

import 'package:http/http.dart'as http;
class PixabayApi{
  final http.Client client;

  PixabayApi(this.client);
  Future<Iterable> fetch(String query) async {
    final response =await client.get(Uri.parse('https://pixabay.com/api/'
        '?key=39736546-267efd0798a650266d024ff39&q=$query&image_type=photo'));
    Iterable hits = jsonDecode(response.body)['hits'];
    return hits;
  }
}