import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_level1/controller/cartcontroller.dart';
import 'package:getx_level1/controller/shoppint_controller.dart';

class ShoppingPage extends StatelessWidget {
  ShoppingPage({super.key});

  //dependency injection, 언제든지 shoppingController를 통해서 데이터 가져올 수 있다
  final shoppingController = Get.put(ShoppingController());
  final cartController = Get.put(CartController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Column(
        children: [
          Expanded(
            child: GetX<ShoppingController>(
              builder: (acontroller) {
                //shppingController를 listen하는 중 데이터가 바뀌면 즉시 업데이트
                return ListView.builder(
                  itemCount: acontroller.products.length,
                  itemBuilder: (context, index) {
                    return Card(
                      margin: EdgeInsets.all(12),
                      child: Padding(
                        padding: EdgeInsets.all(16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      '${acontroller.products[index].productName}',
                                      style: TextStyle(
                                        fontSize: 24,
                                      ),
                                    ),
                                    Text(
                                        '${acontroller.products[index].productDescription}')
                                  ],
                                ),
                                Text(
                                  '\$ ${acontroller.products[index].price}',
                                  style: TextStyle(
                                    fontSize: 24,
                                  ),
                                ),
                              ],
                            ),
                            ElevatedButton(
                              onPressed: () {
                                cartController.addToItem(acontroller.products[index]);
                              },
                              child: GetX<CartController>(
                                builder: (controller) {
                                  return Text(
                                    'Add to cart: ${controller.totalPrice}',
                                  );
                                }
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          ),
          SizedBox(
            height: 30,
          ),
          GetX<CartController>(
            builder: (controller) {
              return Text(
                'Total amount: ${controller.totalPrice}',
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                ),
              );
            }
          ),
          SizedBox(
            height: 100,
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        label: GetX<CartController>(
          builder: (controller) {
            return Text(
              'itemcount: ${controller.count.toString()}',
              style: TextStyle(
                fontSize: 20,
              ),
            );
          }
        ),
        icon: Icon(
          Icons.add_shopping_cart,
        ),
        backgroundColor: Colors.white,
      ),
    );
  }
}
