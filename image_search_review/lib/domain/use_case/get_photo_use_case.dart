import 'dart:math';

import 'package:image_search_review/domain/model/photo.dart';
import 'package:image_search_review/domain/repository/photo_api_repository.dart';

import '../../data/data_source/result.dart';

class GetPhotoUseCase {
  final PhotoApiRepository photoApiRepository;

  GetPhotoUseCase(this.photoApiRepository);

  Future<Result<List<Photo>>> call(String query) async {
    final Result<List<Photo>> result = await photoApiRepository.fetch(query);
    return result.when(Success: (photos) {
      return Result.Success(photos.sublist(0, min(3, photos.length)));
    }, error: (massage) {
      return Result.error(massage);
    });
  }
}
