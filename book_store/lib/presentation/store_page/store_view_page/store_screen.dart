import 'package:book_store/core/customer_info_view_model.dart';
import 'package:book_store/domain/model/simple_store.dart';
import 'package:book_store/presentation/start_page/splash_view_model.dart';
import 'package:book_store/presentation/store_page/store_view_page/store_event.dart';
import 'package:book_store/presentation/store_page/store_view_page/store_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../components/store_simple_info.dart';

class StoreViewScreen extends StatelessWidget {
  StoreViewScreen({
    super.key,
    this.barName,
    this.regionName,
    required this.simpleStores,
  });

  final List<SimpleStore> simpleStores;

  final String? barName;
  final String? regionName;

  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final customerInfoViewModel = context.watch<CustomerInfoViewModel>();
    final storeViewModel = context.watch<StoreViewModel>();
    final splashViewModel = context.watch<SplashViewModel>();


    return WillPopScope(
      onWillPop: () async {
        storeViewModel.setIsNearBy(false);
        return true;
      },
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            storeViewModel.barTagName,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          leading: IconButton(
            onPressed: () {
              storeViewModel.setIsNearBy(false);
              Navigator.pop(context);
            },
            icon: const Icon(Icons.close),
          ),
        ),
        body: Column(children: [
          //입력창 + 검색창
          Row(
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey), // 테두리 색상 설정
                    borderRadius: BorderRadius.circular(8.0), // 테두리 둥글기 설정
                  ),
                  child: TextField(
                    onChanged: (query) {
                      storeViewModel.onEvent(
                          StoreEvent.searchStore(
                              query, splashViewModel, customerInfoViewModel),
                          context);
                    },
                    controller: _controller,
                    decoration: const InputDecoration(
                      hintText: '찾는 서점 이름을 입력하세요.',
                      // 힌트 텍스트
                      contentPadding: EdgeInsets.all(12.0),
                      // 텍스트 입력 필드 내부의 여백 설정
                      border: InputBorder.none, // 기본 테두리 제거
                    ),
                  ),
                ),
              ),
            ],
          ),
          //지역 이름 or 내주변
          Row(
            children: [
              Text(
                storeViewModel.regionTagName ?? '내 주변',
                style: TextStyle(
                    fontSize: customerInfoViewModel.screenHeight / 20,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                '${storeViewModel.stores.length}가 검색 됨',
                style: TextStyle(
                    fontSize: customerInfoViewModel.screenWidth / 20,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          //서점 리스트 표시
          Expanded(
            child: Container(
              child: !storeViewModel.isLoading
                  ? ListView.builder(
                itemCount: storeViewModel.stores.length,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    child: StoreSimpleInfo(
                      id: storeViewModel.stores[index].id!,
                      profileUrl: storeViewModel.stores[index].imageUrl,
                      storeName: storeViewModel.stores[index].name,
                      storeAddr: storeViewModel.stores[index].address,
                      category: storeViewModel.stores[index].category,
                    ),
                    onTap: () {
                      storeViewModel.onEvent(
                        StoreEvent.touchTile(
                          storeViewModel.stores[index].id!,
                        ),
                        context,
                      );
                    },
                  );
                },
              )
                  : const CircularProgressIndicator(),
            ),
          ),
        ]),
      ),
    );
  }
}
