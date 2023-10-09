import 'package:image_search/domain/model/Photo.dart';

import '../../data/data_source/result.dart';

abstract class PhotoApiRepository{
  //Result로 담아야 success도 리턴하고, Error도 리턴 가능
  Future<Result<List<Photo>>> fetch(String query);


}