import 'package:http/http.dart' as http;
import '../model/product_model.dart';
//http 통신으로 json 데이터를 받아서 product로 반환하는 서비스 제공
class Services{
  //http.Client는 HTTP requests 생성하고 서버로 전송하는 데 사용됩니다. client.get(Uri.parse(...))GET 요청을 보낼 수 있습니다.
  static var client = http.Client();

  //이 메서드가 리턴해 줄 데이터 형식은 product 타입의 List
  //async 방식의 메서드이기 때문에 Future 타입의 데이터를 리턴해 줘야 함
  //다양한 이유로 널을 리턴할 수도 있기 때문에List는 널러블 타입
  static Future<List<Product>?> fetchProducts() async{
    var response =await client.get(Uri.parse('http://makeup-api.herokuapp.com/'
        'api/v1/products.json?brand=maybelline'));

    if(response.statusCode==200){
      var jasonData = response.body;
      return productFromJson(jasonData);
    }else{
      return null;
    }
  }
}