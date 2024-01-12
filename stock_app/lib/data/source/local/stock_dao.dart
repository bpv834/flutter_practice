//localData 접근
import 'package:hive/hive.dart';

import 'company_listing_entity.dart';


class StockDao {
  static const companyListing = 'companyListing';

  // 추가
  Future insertCompanyListings(List<CompanyListingEntity> companyListingEntities) async {
    final box= await Hive.openBox<CompanyListingEntity>('stock.db');
    await box.addAll(companyListingEntities);
  }

  // 클리어
  Future clearCompanyListings() async {
    final box= await Hive.openBox<CompanyListingEntity>('stock.db');
    await box.clear();
  }

  // 서치
  Future<List<CompanyListingEntity>> searchCompanyListing(String query) async {
    final box= await Hive.openBox<CompanyListingEntity>('stock.db');
    final List<CompanyListingEntity> companyListing =
        box.values.toList();

    return companyListing
        .where((e) =>
            e.name.toLowerCase().contains(query.toLowerCase()) ||
            e.symbol.toUpperCase().contains(query.toUpperCase()))
        .toList();
  }
}
