import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:image_search_review/data/data_source/pixabay_api.dart';
import '../../domain/model/photo.dart';
import '../../domain/repository/photo_api_repository.dart';
import '../data_source/result.dart';

class PhotoApiRepositoryImpl extends PhotoApiRepository {
  final PixabayApi api;

  PhotoApiRepositoryImpl(this.api);

  @override
  Future<Result<List<Photo>>> fetch(String query) async {
    final Result<Iterable> result = await api.fetch(query);
    return result.when(Success: (iterable){
      return Result.Success(iterable.map((e) => Photo.fromJson(e)).toList());
    } , error: (message){
      return Result.error(message);
    });

  }
}
