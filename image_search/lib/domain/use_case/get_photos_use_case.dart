//viewModel에서 data를 자르고, 가공하는 복잡한 로직을 담당해야 함
//viewModel이 logic에 관여하지 않고 인터페이스 역할만 할 수 있도록 함
import 'dart:math';

import 'package:image_search/data/data_source/result.dart';
import 'package:image_search/domain/model/Photo.dart';
import 'package:image_search/domain/repository/photo_api_repository.dart';

class GetPhotosUseCase {
  final PhotoApiRepository repository;

  GetPhotosUseCase(this.repository);

  //실행 할 메서드 구현
  //함수들은 Call 이란 메서드를 가지고 있음,
  //call은 생략이 가능하다 callback.call(); -> callback()
  Future<Result<List<Photo>>> call(String query) async {
    final result = await repository.fetch(query);
    return result.when(success: (photos) {
      return Result.success(photos.sublist(0, min(photos.length, 3)));
    }, error: (message) {
      return Result.error(message);
    });
  }
}
