import 'package:get/get.dart';
import 'package:getx_level1/model/product.dart';

class ShoppingController extends GetxController{
  var products = <Product>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchData();
  }
  void fetchData() async {
    //api call 하는 상황 가정해서 2초 후 데이터 받음
    await Future.delayed(Duration(seconds: 2));
    var productData =  [
      Product(1, 'productName', 'productDescription', 29),
      Product(2, 'productName', 'productDescription', 28),
      Product(3, 'productName', 'productDescription', 30),
      Product(4, 'productName', 'productDescription', 31),
      Product(5, 'productName', 'productDescription', 32),
    ];
    //현재 리스트 내에 있는 모든 아이템들을 인자값을 받는 아이템으로 대체 해 준다, 밸류 값 업데이트
    products.assignAll(productData);
  }
}