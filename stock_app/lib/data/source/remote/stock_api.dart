import 'package:http/http.dart' as http;

class StockApi {
  static const baseUrl = 'https://www.alphavantage.co/';
  static const apiKey = '5SIO77QFETO5KXT2';
  final http.Client client;

  //생성자를 받아 하는이유: 테스트 코드에서 테스트 클라이언트를 넣기 위함
  StockApi(this.client);

  Future<http.Response> getListings(String apiKey) async {
    return await client.get(Uri.parse(
        'https://www.alphavantage.co/query?function=LISTING_STATUS&apikey=$apiKey'));
  }
}
