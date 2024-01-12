import 'package:stock_app/domain/model/company_listing.dart';

import '../../util/result.dart';
import '../model/company_info.dart';

abstract class StockRepository {
  Future<Result<List<CompanyListing>>> getCompanyListings(
    bool fetchFromRemote,
    String query,
  );

  Future<Result<CompanyInfo>> getCompanyInfo(String symbol);
}
