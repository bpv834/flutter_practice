import 'package:flutter_test/flutter_test.dart';
import 'package:stock_app/data/csv/company_listings_parser.dart';
import 'package:stock_app/data/source/remote/stock_api.dart';

void main(){
  test('네트워크 통신',() async {
    final response =await StockApi().getListings();

    final _parser = CompanyListingParser();
    final remoteListings = await _parser.parse(response.body);

    expect(remoteListings[0].symbol, 'A');
  });
}