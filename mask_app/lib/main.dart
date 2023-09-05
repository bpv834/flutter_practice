import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'model/store.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    setState(() {
      isLoading = true;
    });
    super.initState();
    fetch();
  }

  bool isLoading = true;
  final stores = <Store>[];
  int remains = 0;

  fetch() async {
    setState(() {
      isLoading = true;
    });
    int cnt = 0;
    var url =
        'https://gist.githubusercontent.com/junsuk5/bb7485d5f70974deee920b8f0cd1e2f0/'
        'raw/063f64d9b343120c2cb01a6555cf9b38761b1d94/sample.json';
    var response = await http.get(Uri.parse(url));
    // debugPrint(jsonDecode(response.body).toString());
    final jsonResult = jsonDecode(response.body);
    final jsonStores = jsonResult['stores'];
    setState(() {
      stores.clear();
      jsonStores.forEach((e) {
        if(Store.fromJson(e).remainStat =='plenty' || Store.fromJson(e).remainStat =='some' )
        stores.add(Store.fromJson(e));
      });
      isLoading = false;
    });

    stores.forEach((element) {
      if (element.remainStat == 'break' && element.remainStat == null) {
        cnt++;
      }
    });
    remains = stores.length - cnt;
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('마스크 재고 있는 곳 : ${remains}곳'),
          actions: [
            ElevatedButton(
                onPressed: () {
                  fetch();
                },
                child: Icon(Icons.refresh))
          ],
        ),
        body: isLoading == true
            ? Center(child: CircularProgressIndicator())
            : ListView.builder(
                itemCount: stores.length,
                itemBuilder: (BuildContext context, int index) {
                  final store = stores[index];
                  return Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black87),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: ListTile(
                      title: Text(
                        '${store.name}',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      subtitle: Text('${store.addr}'),
                      trailing: _buildRemainStatWidget(store),
                    ),
                  );
                },
              ));
  }
}
