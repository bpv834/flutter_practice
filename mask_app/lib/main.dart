import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:mask_app/repository/store_repository.dart';
import 'package:mask_app/ui/view/main_page.dart';
import 'package:mask_app/view_model/store_model.dart';
import 'model/store.dart';
import 'package:provider/provider.dart';

void main() {
  //가장 상위 트리에 value
  runApp(
    //아래의 클래스는 데이터 변경을 감지하여 화면을 업데이트할 수 있도록 도와줍니다
    ChangeNotifierProvider(
      //create 속성은 데이터 모델을 생성하는 함수를 지정하는 부분입니다.
      create: (context) {
        final storeModel = StoreModel();
        storeModel.fetch();
        // 앱을 시작할 때 데이터를 미리 불러옴
        return storeModel;
      },
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MainPage(),
    );
  }
}
