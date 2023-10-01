import 'dart:async';

import 'package:image_search/data/photo_api_repository.dart';
import 'package:image_search/data/pixabay_api.dart';

import '../model/Photo.dart';

class HomeViewModel{
  final PhotoApiRepository repository;
  HomeViewModel(this.repository);

  final _photoScreamController=StreamController<List<Photo>>()..add([]);
  Stream<List<Photo>> get photoStream =>_photoScreamController.stream;
  Future<void>fetch(String query) async{
    final result = await repository.fetch(query);
    _photoScreamController.add(result);
  }

}