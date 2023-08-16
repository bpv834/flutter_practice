import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller.dart';

class PersonalCard extends StatelessWidget {
  PersonalCard({super.key});

  final Controller controller = Get.put(Controller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            controller.updateInfo();
          }),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.all(20),
              width: double.maxFinite,
              height: 100,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xFF89dad0)),
              child: Center(
                child: GetX<Controller>(
                  builder: (_) => Text(
                    'Name: ${controller.person().name}',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(20),
              width: double.maxFinite,
              height: 100,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xFF89dad0)),
              child: Center(
                //Obx와 Getx의 차이점:Getx가 다양한 메서드를 보유하여 좀더 무거움,
                //obs는 Controller인스턴스가 미리 다른곳에 init 돼 있어야 함
                //GetX는 Controller 인스턴스를 자체적으로 init가능
                //obs의 변화를 listen하는 공통점
                child: Obx(
                  () => Text(
                    'Age: ${controller.person().age}',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(20),
              width: double.maxFinite,
              height: 100,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xFF89dad0)),
              child: Center(
                child: GetX(
                  init: Controller(),
                  builder: ((controller)=>Text('Age: ${Get.find<Controller>().person().age}')),
                )
              ),
            ),
          ],
        ),
      ),
    );
  }
}
