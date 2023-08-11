import 'package:flutter/material.dart';
import 'package:get/get.dart'; //Getx 이용
import 'package:test_getx_1/controller.dart';
//getbuilder 장점 메모리 효율, 일일히 업데이트 메소드를 불러와 수동으로 작업을 해줘야 한다는 단점
//Getx패키지 설치 ->Controller 클래스 생성-> GetxController 상속-> update 메서드 호출
// -> Dependency Ingection(Get.put)->Getbuilder 호출 ->Get.find<>사용해 접근

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: App(),
    );
  }
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    //GEt.put() 외부에서 사용가능토록 메모리에 등록 시켜주는 역할
    // Controller contoller = Get.put(Controller());
    return Scaffold(
      appBar: AppBar(
        title: Text('GetX'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //state가 변할때마다 변한 state를 다시 그려주는 역할
            GetBuilder<Controller>(
              init: Controller(),
              builder: (_) => Text(
                //${contoller.getx} 대신 인스턴스를 find로 찾아 접근
                'Current value is:${Get.find<Controller>().getx}',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.red,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                // contoller.increment();
                Get.find<Controller>().increment();
              },
              child: Text('Add number'),
            ),
          ],
        ),
      ),
    );
  }
}
