import 'package:book_store/core/customer_info_view_model.dart';
import 'package:book_store/presentation/store_page/store_view_page/store_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../store_detail_page/store_detail_screen.dart';

class StoreViewScreen extends StatefulWidget {
  StoreViewScreen({super.key, this.barName, this.regionName});

  final barName;
  final regionName;

  @override
  State<StoreViewScreen> createState() => _StoreViewScreenState();
}

class _StoreViewScreenState extends State<StoreViewScreen> {
  TextEditingController _controller = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final customerInfoViewModel = context.read<CustomerInfoViewModel>();
    final storeViewModel =context.read<StoreViewModel>();
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          storeViewModel.barName,
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.close),
        ),
      ),
      body: Column(
        children: [
          Container(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey), // 테두리 색상 설정
                      borderRadius: BorderRadius.circular(8.0), // 테두리 둥글기 설정
                    ),
                    child: TextField(
                      controller: _controller,
                      decoration: InputDecoration(
                        hintText: '텍스트를 입력하세요.',
                        // 힌트 텍스트
                        contentPadding: EdgeInsets.all(12.0),
                        // 텍스트 입력 필드 내부의 여백 설정
                        border: InputBorder.none, // 기본 테두리 제거
                      ),
                    ),
                  ),
                ),
                TextButton(onPressed: () {}, child: Text('검색'))
              ],
            ),
          ),
          Container(
              child: Row(
            children: [
              Text(
                storeViewModel.regionName??'내 주변',
                style: TextStyle(
                    fontSize: customerInfoViewModel.screenHeight / 20,
                    fontWeight: FontWeight.bold),
              ),
            ],
          )),
          Expanded(
            child: Container(
              child: ListView(
                children: [
                  SingleChildScrollView(
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => StoreDetailScreen()),
                        );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                              color: Colors.black,
                            )),
                        child: Row(
                          children: [
                            Container(
                              width: customerInfoViewModel.screenWidth / 2,
                              // 정사각형의 가로 길이
                              height: customerInfoViewModel.screenHeight / 6,
                              // 정사각형의 세로 길이
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.grey, // 테두리 색상 설정
                                  width: 1.0, // 테두리 두께 설정
                                ),
                                borderRadius: BorderRadius.circular(16.0),
                                image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: NetworkImage(
                                        'https://e1.pngegg.com/pngimages/487/453/png-clipart-iu-thumbnail.png')
                                    // 이미지 파일의 경로
                                    ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(8),
                              child: Column(
                                children: [
                                  Text(
                                    '서점 이름',
                                    maxLines: 1,
                                    style: TextStyle(
                                      fontSize:
                                          customerInfoViewModel.screenHeight /
                                              25,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    '서점 주소',
                                    style: TextStyle(
                                      fontSize:
                                          customerInfoViewModel.screenHeight /
                                              35,
                                    ),
                                    maxLines: 1,
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
