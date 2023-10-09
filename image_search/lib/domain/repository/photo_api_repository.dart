import 'package:image_search/domain/model/Photo.dart';

abstract class PhotoApiRepository{
  Future<List<Photo>> fetch(String query);


}