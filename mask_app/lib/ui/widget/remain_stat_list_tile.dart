import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../model/store.dart';

class RemainStatListTile extends StatelessWidget {
  const RemainStatListTile({super.key, required this.store});

  final Store store;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        '${store.name}',
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('${store.addr}'),
          Text('현재 위치에서 ${store.dist}KM 내외에 있습니다'),
        ],
      ),
      trailing: _buildRemainStatWidget(store),
      onTap: () {
        _launchUrl(store.lat, store.lng);
      },
    );
  }

  Future<void> _launchUrl(num? lat, num? lng) async {
    final Uri _url =
        Uri.parse('https://google.com/maps/search/?api=1&query=$lat,$lng');
    if (!await launchUrl(_url)) {
      throw Exception('Could not launch $_url');
    }
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
          style: TextStyle(
            color: colors,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        Text(
          description,
          style: TextStyle(
            color: colors,
            fontSize: 13,
          ),
        )
      ],
    );
  }
}
