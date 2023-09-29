import 'dart:async';

import 'package:flutter/material.dart';
import 'package:image_search/data/api.dart';

import '../model/Photo.dart';

class PhotoProvider extends InheritedWidget {
  final PixabayApi api;
  final _photoScreamController=StreamController<List<Photo>>()..add([]);
  Stream<List<Photo>> get photoStream =>_photoScreamController.stream;

  PhotoProvider({super.key, required this.api, required super.child});

  static PhotoProvider of(BuildContext context) {
    //context에서 PhotoProvider 형식의 위젯을 찾습니다.
    final PhotoProvider? result =
        context.dependOnInheritedWidgetOfExactType<PhotoProvider>();
    //assert: 주어진 조건이 참이 아니면 예외를 발생시키고 프로그램을 중단시킵니다
    assert(result != null, 'No PixabayApi found in context');
    return result!;
  }
  Future<void>fetch(String query) async{
    final result = await api.fetch(query);
    _photoScreamController.add(result);
  }

  @override
  bool updateShouldNotify(PhotoProvider oldWidget) {
    //바뀐것의 기준을 정하는 것
    // TODO: implement updateShouldNotify
    return oldWidget.api != api;
  }
}
