import 'package:book_store/core/customer_info_view_model.dart';
import 'package:book_store/domain/model/store_info.dart';
import 'package:book_store/presentation/start_page/splash_view_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'store_event.freezed.dart';

@freezed
sealed class StoreEvent with _$StoreEvent {
  const factory StoreEvent.touchTile(int storeId) = TouchTile;
  const factory StoreEvent.searchStore(String query, SplashViewModel? splashViewModel, CustomerInfoViewModel? customerInfoViewModel) = SearchStore;
  const factory StoreEvent.refresh(String? query) = Refresh;
}