import 'dart:js';

import 'package:image_search_review/data/data_source/pixabay_api.dart';
import 'package:image_search_review/data/repository/photo_api_repository_impl.dart';
import 'package:image_search_review/domain/use_case/get_photo_use_case.dart';
import 'package:image_search_review/presentation/home/home_veiw_model.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:http/http.dart' as http;

import '../domain/repository/photo_api_repository.dart';
//Provider 전체
List<SingleChildWidget> globalProviders = [
  ...independentModels,
  ...dependentModels,
  ...viewModels
];

//독립된 객체
List<SingleChildWidget> independentModels = [
  Provider<http.Client>(
    create: (context) => http.Client(),
  )
];

//위의 객체와 의존성있는 객체
List<SingleChildWidget> dependentModels = [
  //필요한 독립 api, 만들 api
  ProxyProvider<http.Client,PixabayApi>(
    update: (context, client, _)=>PixabayApi(client),
  ),
  ProxyProvider<PixabayApi,PhotoApiRepository>(
    update: (context, api, _)=>PhotoApiRepositoryImpl(api),
  ),
  ProxyProvider<PhotoApiRepository,GetPhotoUseCase>(
    update: (context, repository, _)=>GetPhotoUseCase(repository),
  ),
];
// viewModels
List<SingleChildWidget> viewModels = [
  ChangeNotifierProvider(create: (context)=>HomeViewModel(getPhotoUseCase: context.read<GetPhotoUseCase>()))
];
