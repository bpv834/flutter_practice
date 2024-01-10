import 'dart:developer';

import 'package:book_store/core/customer_info_view_model.dart';
import 'package:book_store/presentation/board_page/board_detail_page/board_detail_view_model.dart';
import 'package:book_store/presentation/board_page/board_page/board_view_model.dart';
import 'package:book_store/presentation/board_page/my_board_page/my_board_view_model.dart';
import 'package:book_store/presentation/home_page/home_screen.dart';
import 'package:book_store/presentation/home_page/home_view_model.dart';
import 'package:book_store/presentation/login_page/login_view_model.dart';
import 'package:book_store/presentation/map_page/map_view_model.dart';
import 'package:book_store/presentation/nav_page/nav_view_model.dart';
import 'package:book_store/presentation/start_page/splash_screen.dart';
import 'package:book_store/presentation/start_page/splash_view_model.dart';
import 'package:book_store/presentation/store_page/store_view_page/store_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_naver_map/flutter_naver_map.dart';
import 'package:provider/provider.dart';

Future<void> _initialize() async {
  WidgetsFlutterBinding.ensureInitialized();
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  /*KakaoSdk.init(nativeAppKey: '469d29a5bf89d9a4c69d611479c06989');*/
  await NaverMapSdk.instance.initialize(
    clientId: '1r4gs18h8q',
    onAuthFailed: (ex) => log("********* 네이버맵 인증오류 : $ex *********"),
  );

}


void main() async {
  await _initialize();
  final providers = [
    ChangeNotifierProvider<MyBoardViewModel>(
      create: (context) => MyBoardViewModel(),
    ),
    ChangeNotifierProvider<BoardViewModel>(
      create: (context) => BoardViewModel(),
    ),
    ChangeNotifierProvider<StoreViewModel>(
      create: (context) => StoreViewModel(),
    ),
    ChangeNotifierProvider<SplashViewModel>(
      create: (context) => SplashViewModel(),
    ),
    ChangeNotifierProvider<MapViewModel>(
      create: (context) => MapViewModel(),
    ),
    ChangeNotifierProvider<BoardDetailViewModel>(
      create: (context) => BoardDetailViewModel(),
    ),
    ChangeNotifierProvider<NavViewModel>(
      create: (context) => NavViewModel(),
    ),
    ChangeNotifierProvider<CustomerInfoViewModel>(
      create: (context) => CustomerInfoViewModel(),
    ),
    ChangeNotifierProvider<LoginViewModel>(
      create: (context) => LoginViewModel(),
    ),
    ChangeNotifierProvider<HomeViewModel>(
      create: (context) => HomeViewModel(),
    ),
  ];
  runApp(
    MultiProvider(
      providers: providers,
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "BookStoreSearch",
      home: SplashScreen(),
    );
  }
}
