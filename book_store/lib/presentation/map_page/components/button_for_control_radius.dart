import 'package:book_store/presentation/map_page/map_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_naver_map/flutter_naver_map.dart';
import 'package:provider/provider.dart';

import '../map_ui_event.dart';

class ButtonForControlRadius extends StatelessWidget {
  const ButtonForControlRadius({super.key, required this.mapController, required this.setRadius});
  final NaverMapController mapController;
  final int setRadius;




  @override
  Widget build(BuildContext context) {
    double zoom=10;
    if(setRadius==20) zoom=8;
    if(setRadius==30) zoom=6;
    final mapViewModel=context.watch<MapViewModel>();
    return TextButton(
        onPressed: () {
          mapViewModel.setRadius(setRadius);
          mapController.updateCamera(
            NCameraUpdate.scrollAndZoomTo(zoom: zoom),
          );
          mapViewModel.onEvent(MapUiEvent.switchRadius(mapViewModel.radius), context, mapController, mapViewModel);
        },
        child: Text('${setRadius}Km'));
  }
}
