import 'dart:developer';

import 'package:book_store/color_schemes.g.dart';
import 'package:book_store/core/customer_info_view_model.dart';
import 'package:book_store/data/data_source/get_api/board_api.dart';
import 'package:book_store/data/data_source/get_api/map_api.dart';
import 'package:book_store/data/data_source/get_api/store_review_api.dart';
import 'package:book_store/data/data_source/get_api/user_info_api.dart';
import 'package:book_store/data/repository/BoardRepositoryImpl.dart';
import 'package:book_store/data/repository/StoreRepositoryImpl.dart';
import 'package:book_store/data/repository/UserRepositoryImpl.dart';
import 'package:book_store/data/repository/store_review_repository_impl.dart';
import 'package:book_store/presentation/board_page/board_detail_page/board_detail_view_model.dart';
import 'package:book_store/presentation/board_page/board_modify_page/board_modify_view_model.dart';
import 'package:book_store/presentation/board_page/board_page/board_view_model.dart';
import 'package:book_store/presentation/board_page/board_write_page/board_write_view_model.dart';
import 'package:book_store/presentation/board_page/my_board_page/my_board_view_model.dart';
import 'package:book_store/presentation/home_page/home_view_model.dart';
import 'package:book_store/presentation/input_inform_page/input_inform_view_model.dart';
import 'package:book_store/presentation/login_page/login_view_model.dart';
import 'package:book_store/presentation/map_page/map_view_model.dart';
import 'package:book_store/presentation/my_page/my_page_view_model.dart';
import 'package:book_store/presentation/nav_page/nav_view_model.dart';
import 'package:book_store/presentation/start_page/splash_screen.dart';
import 'package:book_store/presentation/start_page/splash_view_model.dart';
import 'package:book_store/presentation/store_page/store_detail_page/store_detail_view_model.dart';
import 'package:book_store/presentation/store_page/store_review_page/store_review_view_model.dart';
import 'package:book_store/presentation/store_page/store_review_write_page/store_review_write_view_model.dart';
import 'package:book_store/presentation/store_page/store_view_page/store_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_naver_map/flutter_naver_map.dart';
import 'package:kakao_flutter_sdk_user/kakao_flutter_sdk_user.dart';
import 'package:provider/provider.dart';

import 'data/data_source/get_api/store_api.dart';

Future<void> _initialize() async {
  WidgetsFlutterBinding.ensureInitialized();
  KakaoSdk.init(nativeAppKey: '469d29a5bf89d9a4c69d611479c06989');
  await NaverMapSdk.instance.initialize(
    clientId: '1r4gs18h8q',
    onAuthFailed: (ex) => log("********* 네이버맵 인증오류 : $ex *********"),
  );
}

void main() async {
  await _initialize();
  final providers = [
    ChangeNotifierProvider<MyPageViewModel>(
      create: (context) => MyPageViewModel(
          boardRepository: BoardRepositoryImpl(boardApi: BoardApi()), storeRepository: StoreRepositoryImpl(StoreApi(), MapApi())),
    ),
    ChangeNotifierProvider<StoreReviewWriteViewModel>(
      create: (context) => StoreReviewWriteViewModel(),
    ),
    ChangeNotifierProvider<MyBoardViewModel>(
      create: (context) => MyBoardViewModel(
          boardRepository: BoardRepositoryImpl(boardApi: BoardApi())),
    ),
    ChangeNotifierProvider<BoardViewModel>(
      create: (context) => BoardViewModel(
          boardRepository: BoardRepositoryImpl(boardApi: BoardApi())),
    ),
    ChangeNotifierProvider<StoreReviewViewModel>(
      create: (context) => StoreReviewViewModel(
          storeReviewRepository:
              StoreReviewRepositoryImpl(storeReviewApi: StoreReviewApi())),
    ),
    ChangeNotifierProvider<BoardModifyViewModel>(
      create: (context) => BoardModifyViewModel(),
    ),
    ChangeNotifierProvider<BoardWriteViewModel>(
      create: (context) => BoardWriteViewModel(),
    ),
    ChangeNotifierProvider<InputInformViewModel>(
      create: (context) => InputInformViewModel(),
    ),
    ChangeNotifierProvider<StoreDetailViewModel>(
      create: (context) =>
          StoreDetailViewModel(StoreRepositoryImpl(StoreApi(), MapApi())),
    ),
    ChangeNotifierProvider<StoreViewModel>(
      create: (context) =>
          StoreViewModel(StoreRepositoryImpl(StoreApi(), MapApi())),
    ),
    ChangeNotifierProvider<SplashViewModel>(
      create: (context) =>
          SplashViewModel(StoreRepositoryImpl(StoreApi(), MapApi())),
    ),
    ChangeNotifierProvider<MapViewModel>(
      create: (context) =>
          MapViewModel(StoreRepositoryImpl(StoreApi(), MapApi())),
    ),
    ChangeNotifierProvider<BoardDetailViewModel>(
      create: (context) => BoardDetailViewModel(
          userRepository: UserRepositoryImpl(userApi: UserInfoApi()),
          boardRepository: BoardRepositoryImpl(boardApi: BoardApi())),
    ),
    ChangeNotifierProvider<NavViewModel>(
      create: (context) => NavViewModel(),
    ),
    ChangeNotifierProvider<CustomerInfoViewModel>(
      create: (context) => CustomerInfoViewModel(),
    ),
    ChangeNotifierProvider<LoginViewModel>(
      create: (context) => LoginViewModel(
          userRepository: UserRepositoryImpl(userApi: UserInfoApi())),
    ),
    ChangeNotifierProvider<HomeViewModel>(
      create: (context) =>
          HomeViewModel(storeRepository: StoreRepositoryImpl(StoreApi(), MapApi()), boardRepository: BoardRepositoryImpl(boardApi: BoardApi()))
    ),
  ];
  runApp(
    MultiProvider(
      providers: providers,
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "BookStoreSearch",
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: lightColorScheme,
      ),
      darkTheme: ThemeData(useMaterial3: true, colorScheme: darkColorScheme),
      themeMode: ThemeMode.system,
      home: const SplashScreen(),
    );
  }
}
