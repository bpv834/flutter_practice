import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../store_page/store_view_page/store_screen.dart';
import '../../store_page/store_view_page/store_view_model.dart';
import '../area_section/region_section.dart';
import '../home_event.dart';
import '../home_view_model.dart';

class BuildRegionButton extends StatelessWidget {
  const BuildRegionButton({
    Key? key,
    required this.label,
    required this.regionName,
    required this.regionTagName,
    required this.barTagName,
  }) : super(key: key);
  final String label;
  final String regionName;
  final String regionTagName;
  final String barTagName;

  @override
  Widget build(BuildContext context) {
    final homeViewModel = context.watch<HomeViewModel>();
    final storeViewModel = context.watch<StoreViewModel>();
    return Expanded(
      child: InkWell(
        onTap: () async {
          storeViewModel.loadSimpleStores(label);
          storeViewModel.barTagName = barTagName;
          storeViewModel.regionTagName = regionTagName;
          storeViewModel.regionName = regionName;
          //클릭하면서, 레포지토리 stores를 받아옴
          homeViewModel.onEvent(
            HomeEvent.byRegion(
              RegionSection.lookByRegion('${storeViewModel.regionName}'),
            ),
          );
          await Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) =>
                  StoreViewScreen(simpleStores: storeViewModel.stores),
            ),
          );
        },
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black),
          ),
          child: Center(
            child: Text(
              regionName,
            ),
          ),
        ),
      ),
    );
  }
}
