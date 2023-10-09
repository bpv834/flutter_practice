import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:image_search/data/data_source/pixabay_api.dart';

import '../../domain/model/Photo.dart';
import '../../domain/repository/photo_api_repository.dart';

class PhotoApiRepositoryImpl implements PhotoApiRepository {
  PixabayApi api;

  PhotoApiRepositoryImpl(this.api);

  @override
  Future<List<Photo>> fetch(String query) async {
    final result = await api.fetch(query);
    return result.map((e) => Photo.fromJson(e)).toList();
  }
}
