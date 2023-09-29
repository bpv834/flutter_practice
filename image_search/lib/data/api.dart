import 'dart:convert';
import '../model/Photo.dart';
import 'package:http/http.dart' as http;

class PixabayApi {
  Future<List<Photo>> fetch(String query) async {
    final response = await http.get(Uri.parse('https://pixabay.com/api/'
        '?key=39736546-267efd0798a650266d024ff39&q=$query&image_type=photo'));
    Iterable hits = jsonDecode(response.body)['hits'];
    return hits.map((e) => Photo.fromJson(e)).toList();
  }
}
