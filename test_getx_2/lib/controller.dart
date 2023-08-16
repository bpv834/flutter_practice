import 'package:get/get.dart'; //GetxController
import 'package:test_getx_2/model.dart';

class Controller extends GetxController{
  // obs를 사용하여 person 객체를 observable(listen이 가능한)상태로 만듦
  final person = Person().obs;
  
  void updateInfo(){
    //state의 현재 밸류값을 가져오게 하는 것
    //obs객체의 다양한 메서드 이용 가능
    person.update((val) {
      val?.age++;
      val?.name='Coding Chef';
    });
  }
}