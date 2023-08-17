import 'package:get/get.dart';
import '../data/services.dart';
import '../model/product_model.dart';
class Controller extends GetxController{
  var productList=<Product>[].obs;
  void fetchData() async{
    //json데이터를 가공한 fetchProducts를 받아서 products에 넣음
    var products = await Services.fetchProducts();
    if(products!=null){
      //List.value = List객체를 넣으면 매핑됨
      productList.value=products;
    }
  }
  @override
  void onInit() {
    super.onInit();
    fetchData();
  }
}