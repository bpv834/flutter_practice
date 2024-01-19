import 'package:stock_app/data/csv/company_listings_parser.dart';
import 'package:stock_app/data/csv/intra_day_info_parser.dart';
import 'package:stock_app/data/mapper/company_mapper.dart';
import 'package:stock_app/domain/model/company_info.dart';
import 'package:stock_app/domain/model/company_listing.dart';
import 'package:stock_app/domain/model/intra_day_info.dart';
import 'package:stock_app/domain/repository/stock_repository.dart';

import '../../util/result.dart';
import '../source/local/stock_dao.dart';
import '../source/remote/stock_api.dart';

class StockRepositoryImpl implements StockRepository {
  final StockApi _api;
  final StockDao _dao;
  final _companyListingsParser = CompanyListingParser();
  final _intraDayInfoParser = IntraDayInfoParser();

  StockRepositoryImpl(this._api, this._dao);

  @override
  Future<Result<List<CompanyListing>>> getCompanyListings(
      bool fetchFromRemote, String query) async {
    //캐시에서 찾는다
    final localListings = await _dao.searchCompanyListing(query);
    //없다면 리모트에서 가져온다
    final isDBEmpty = localListings.isEmpty && query.isEmpty;
    final shouldJustLoadFromCache = !isDBEmpty && !fetchFromRemote;

    //캐시
    if (shouldJustLoadFromCache) {
      return Result.success(
          localListings.map((e) => e.toCompanyListing()).toList());
    }

    // 리모트
    try {
      final response = await _api.getListings();
      //csv data는 response.body에 들어있음
      final remoteListings = await _companyListingsParser.parse(response.body);

      //캐시 비우기
      await _dao.clearCompanyListings();

      //캐시 추가
      await _dao.insertCompanyListings(
          remoteListings.map((e) => e.toCompanyListingEntity()).toList());

      return Result.success(remoteListings);
    } catch (e) {
      return const Result.error('데이터 로드 실패!!');
    }
  }

  @override
  Future<Result<CompanyInfo>> getCompanyInfo(String symbol) async {
    try {
      final dto = await _api.getCompanyInfo(symbol: symbol);
      return Result.success(dto.toCompanyInfo());
    } catch (e) {
      return Result.error('회사 정보 로드 실패!! :${e.toString()}');
    }
  }

  @override
  Future<Result<List<IntraDayInfo>>> getIntraDayInfo(String symbol) async {
    try {
      final response = await _api.getIntraDayInfo(symbol: symbol);
      final results = await _intraDayInfoParser.parse(response.body);
      return Result.success(results);
    } catch (e) {
      return Result.error('intraDay 정보 로드 실패 : ${e.toString()}');
    }
  }
}
