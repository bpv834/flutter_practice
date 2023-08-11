import 'package:get/get.dart';

class Controller extends GetxController{
  int _x = 0;
  //다트에서 getter 메서드의 정의
  int get getx =>_x;

  void increment(){
    _x++;
    //state가 변한걸 알려주는 기능 이게 있어야 state를 새로 그릴 수 있음
    update();
  }
}