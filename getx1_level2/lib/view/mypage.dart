import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx1_level2/view/product_tile.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import '../controller/controller.dart';

class MyPage extends StatelessWidget {
  MyPage({super.key});
  final controller = Get.put(Controller());
  bool showSpinner = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Chef shop',
          ),
          backgroundColor: Colors.white,
          leading: Icon(Icons.menu),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.view_list_rounded),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.shopping_cart),
            ),
          ],
        ),
        body: Container(
          color: Colors.black,
          child: Padding(
            padding: EdgeInsets.fromLTRB(10, 16, 10, 16),
            child: Obx(()=>
              GridView.builder(
                //main 가로 , cross 세로
                //Delegate = 어떤 모양을 가질지 결정 하는 아규먼트
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  // 열 개수
                  crossAxisCount: 2,
                  //격자 가로 두깨
                  mainAxisSpacing: 10,
                  //격자 세로 두깨
                  crossAxisSpacing: 10,
                ),
                itemBuilder: (context, index){
                  return ProductTile(controller.productList[index]);
                },
                itemCount: controller.productList.length,
              ),
            ),
          ),
        ));
  }
}
