import 'package:flutter/material.dart';

import '../../model/store.dart';

class RemainStatListTile extends StatelessWidget {
  const RemainStatListTile({super.key, required this.store});
  final Store store;
  @override
  Widget build(BuildContext context) {
    return _buildRemainStatWidget(store);
  }

  Widget _buildRemainStatWidget(Store store) {
    var maskcnt = '판매중지';
    var description = '판매중지';
    var colors = Colors.black;

    if (store.remainStat == 'plenty') {
      maskcnt = '충분';
      description = '100개 이상';
      colors = Colors.green;
    } else if (store.remainStat == 'some') {
      maskcnt = '보통';
      description = '30개~100개';
      colors = Colors.yellow;
    } else if (store.remainStat == 'few') {
      maskcnt = '부족';
      description = '2개~30개';
      colors = Colors.red;
    } else if (store.remainStat == 'empty') {
      maskcnt = '소진임박';
      description = '1개 이하';
      colors = Colors.grey;
    }
    return Column(
      children: [
        Text(
          maskcnt,
          style: TextStyle(color: colors, fontWeight: FontWeight.bold),
        ),
        Text(
          description,
          style: TextStyle(color: colors),
        ),
      ],
    );
  }
}
