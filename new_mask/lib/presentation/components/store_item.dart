import 'package:flutter/material.dart';
import 'package:new_mask/domain/model/store.dart';

class StoreItem extends StatelessWidget {
  final Store store;

  const StoreItem({super.key, required this.store});

  @override
  Widget build(BuildContext context) {
    String roundedDistance = (store.distance/1000).toStringAsFixed(2);
    return Row(
      children: [
        Column(
          children: [
            Text(store.name),
            Text(store.address),
            Text('${roundedDistance}Km'),
          ],
        ),
        Column(
          children: [
            Text(store.remainStatus),
            Text('amunt'),
          ],
        ),
      ],
    );
  }
}
