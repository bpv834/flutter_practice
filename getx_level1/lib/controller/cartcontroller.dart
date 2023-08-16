import 'package:get/get.dart';
import 'package:getx_level1/model/product.dart';

class CartController extends GetxController{
   var cartItems = <Product>[].obs;
   //cartitems가 초기화 되기 전에는 접근할 수 없으므로 getter 사용
   //어떤 요소가 cartController를 listen하던, cartitems가 업데이트 되면 자동으로 totalprice값도 업데이트
   double get totalPrice => cartItems.fold(0, (e,item)=>e+item.price);
   int get count =>cartItems.length;

   //어디서나 addToitem을 실행하면cartItems가 업데이트 될 것이고,
   //이 CartController를 listen하고 있는 UI는 어디서든 즉시 업데이트 될 것
   void addToItem(Product product){
     cartItems.add(product);
   }
}