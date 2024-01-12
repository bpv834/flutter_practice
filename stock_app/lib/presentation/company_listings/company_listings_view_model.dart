import 'dart:async';

import 'package:flutter/material.dart';
import 'package:stock_app/presentation/company_listings/company_listings_action.dart';
import 'package:stock_app/presentation/company_listings/company_listings_state.dart';

import '../../domain/repository/stock_repository.dart';

class CompanyListingsViewModel with ChangeNotifier {
  final StockRepository _repository;

  var _state = const CompanyListingsState();

  Timer? _debounce;

  //freezed로 만들어진 불변객체
  CompanyListingsState get state => _state;

  //생성자에서 모든 데이터 로드
  CompanyListingsViewModel(this._repository) {
    //모든 데이터 로드 메서드
    _getCompanyListings();
  }

  void onAction(CompanyListingsAction action) {
    action.when(
      //새로고침은 remote에서 데이터를 가져옴
      refresh: () => _getCompanyListings(fetchFromRemote: true),
      //LocalDb에서 검색을 함 기본 fetchremote값이 false기 때문에
      onSearchQueryChange: (query) {
        //debounce가 ?상태면 캔슬
        _debounce?.cancel();
        //빠른 키워드 수정으로 인한 연산을 하지않도록 캔슬시켜줌
        _debounce = Timer(const Duration(milliseconds: 500), () {
          _getCompanyListings(query: query);
        });
      },
    );
  }

  Future _getCompanyListings({
    bool fetchFromRemote = false,
    String query = '',
  }) async {
    _state = state.copyWith(
      isLoading: true,
    );
    notifyListeners();

    final result = await _repository.getCompanyListings(fetchFromRemote, query);

    result.when(success: (listings) {
      _state = state.copyWith(companies: listings);
    }, error: (e) {
      print(e.toString());
    });
    _state = state.copyWith(
      isLoading: false,
    );
    notifyListeners();
  }
}
