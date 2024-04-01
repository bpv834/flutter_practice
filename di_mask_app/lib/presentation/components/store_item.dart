import 'package:flutter/material.dart';

import '../../domain/model/store.dart';

class StoreItem extends StatelessWidget {
  final Store store;
  const StoreItem({super.key, required this.store});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            Text(store.name),
            Text(store.address),
            Text('${store.distance/1000}km'),
          ],
        ),
        Column(
          children: [
            Text(store.remainStat),
            Text('100개 이상'),
          ],
        ),
      ],
    );
  }
}
