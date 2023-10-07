// import 'package:flutter/material.dart';
// import 'package:image_search/ui/home_view_model.dart';
//
// class PhotoProvider extends InheritedWidget {
//   final HomeViewModel viewModel;
//   const PhotoProvider({super.key, required super.child, required this.viewModel});
//
//   static PhotoProvider of(BuildContext context) {
//     //context에서 PhotoProvider 형식의 위젯을 찾습니다.
//     final PhotoProvider? result =
//         context.dependOnInheritedWidgetOfExactType<PhotoProvider>();
//     //assert: 주어진 조건이 참이 아니면 예외를 발생시키고 프로그램을 중단시킵니다
//     assert(result != null, 'No PixabayApi found in context');
//     return result!;
//   }
//
//   @override
//   bool updateShouldNotify(PhotoProvider oldWidget) {
//     //바뀐것의 기준을 정하는 것
//     // TODO: implement updateShouldNotify
//     return true;
//   }
// }
