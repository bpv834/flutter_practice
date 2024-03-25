import 'package:book_store/presentation/home_page/area_section/region_section.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

import '../../domain/model/simple_store.dart';

part 'home_event.freezed.dart';

@freezed
sealed class HomeEvent with _$HomeEvent {
  const factory HomeEvent.byRegion(RegionSection regionSection) = Byregion;
  const factory HomeEvent.nearbyStore(List<SimpleStore> nearStore, BuildContext context) = NearbyStore;
}
