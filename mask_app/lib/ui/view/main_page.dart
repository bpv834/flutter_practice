import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:mask_app/ui/widget/remain_stat_list_tile.dart';
import 'package:mask_app/view_model/store_model.dart';
import 'package:provider/provider.dart';

import '../../model/store.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});



  @override
  Widget build(BuildContext context) {
    final storeModel = Provider.of<StoreModel>(context);
    return Scaffold(
        appBar: AppBar(
          title: Text('마스크 재고 있는 곳 : ${storeModel.stores.length}곳'),
          actions: [
            ElevatedButton(
                onPressed: () {
                  storeModel.fetch();
                },
                child: Icon(Icons.refresh))
          ],
        ),
        body: storeModel.isLoading == true
            ? Center(child: CircularProgressIndicator())
            : ListView.builder(
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
                  style: TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 18),
                ),
                subtitle: Text('${store.addr}'),
                trailing: RemainStatListTile(store: store),
              ),
            );
          },
        ));
  }
}
