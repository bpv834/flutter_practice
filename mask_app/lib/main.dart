import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:mask_app/repository/store_repository.dart';
import 'package:mask_app/view_model/store_model.dart';
import 'model/store.dart';
import 'package:provider/provider.dart';

void main() {
  //가장 상위 트리에 value
  runApp(ChangeNotifierProvider.value(
    //value의 인스턴스를 builder 메서드에서 사용할 수 있다
    value: StoreModel(),
    child: MyApp(),
  ));
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
    super.initState();
  }

  bool isLoading = false;
  int remains = 0;

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
    final storeModel = Provider.of<StoreModel>(context);
    return Scaffold(
        appBar: AppBar(
          title: Text('마스크 재고 있는 곳 : 곳'),
          actions: [
            ElevatedButton(
                onPressed: () {
                  storeModel.fetch().then((e) {
                    //fetch : 값을 새로 받아서 받은 것을 통지함 통지를 하면 값을 새로 받아 다시 화면을 그림
                    storeModel.fetch();
                    // isLoading = storeModel.getStart;
                  });
                },
                child: Icon(Icons.refresh))
          ],
        ),
        // body: isLoading == true
        //     ? Center(child: CircularProgressIndicator())
        //     :
        body: ListView.builder(
          itemCount: storeModel.stores.length,
          itemBuilder: (BuildContext context, int index) {
            final store = storeModel.stores[index];
            return Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black87),
                borderRadius: BorderRadius.circular(12),
              ),
              child: ListTile(
                title: Text(
                  '${store.name}',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                subtitle: Text('${store.addr}'),
                trailing: _buildRemainStatWidget(store),
              ),
            );
          },
        ));
  }
}
