import 'package:http/http.dart' as http;

class MapApi {
  final http.Client _client;
  static const apiKey = '1r4gs18h8q';
  static const clientSecret = 'Qx0RMVM7izpIphJYYRo1M2NhLdiDBElLudGD9fg8';

  //생성자를 받아 하는이유: 테스트 코드에서 테스트 클라이언트를 넣기 위함
  // :뒤는 바디부분으로 생성자를 받아 _client에 대입하는데 대입하는 client가 널이면 기본클라를 대입한다.
  MapApi({http.Client? client}) : _client = (client ?? http.Client());

  Future<http.Response> getLatLongFromAddress(String address) async {
    final apiUrl =
        'https://naveropenapi.apigw.ntruss.com/map-geocode/v2/geocode?query=$address';
    return await _client.get(
      Uri.parse(apiUrl),
      headers: {
        'X-NCP-APIGW-API-KEY-ID': apiKey,
        'X-NCP-APIGW-API-KEY': clientSecret,
      },
    );
  }

  Future<http.Response> getDistance(
      double startLat, double startLng, double endLat, double endLng) async {
    final String baseUrl =
        'https://naveropenapi.apigw.ntruss.com/map-direction/v1/driving';

    final response = await http.get(
      Uri.parse('$baseUrl?start=$startLng,$startLat&goal=$endLng,$endLat'),
      headers: {
        'X-NCP-APIGW-API-KEY-ID': apiKey,
        'X-NCP-APIGW-API-KEY': clientSecret,
      },
    );
    return response;
  }
}