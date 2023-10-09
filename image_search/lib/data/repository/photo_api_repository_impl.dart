import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:image_search/data/data_source/pixabay_api.dart';

import '../../domain/model/Photo.dart';
import '../../domain/repository/photo_api_repository.dart';
import '../data_source/result.dart';

class PhotoApiRepositoryImpl implements PhotoApiRepository {
  PixabayApi api;

  PhotoApiRepositoryImpl(this.api);

  @override
  Future<Result<List<Photo>>> fetch(String query) async {
    final Result<Iterable> result = await api.fetch(query);
    //frezzed에서 제공하는 타입 판별 메서드, freezed사용 안하면 if(result is Success)로 검사해야함
    return result.when(success: (Iterable) {
      return Result.success(Iterable.map((e) => Photo.fromJson(e)).toList());
    }, error: (message) {
      return Result.error(message);
    });
  }
}
