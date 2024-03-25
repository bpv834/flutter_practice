import 'package:book_store/core/customer_info_view_model.dart';
import 'package:book_store/domain/model/simple_store.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class NearStoreBox extends StatelessWidget {
  NearStoreBox({super.key, required this.nearStore});
  SimpleStore nearStore;
  @override
  Widget build(BuildContext context) {
    final customerInfoViewModel = context.watch<CustomerInfoViewModel>();
    String storeName=nearStore.name!;
    if(storeName.length>15) storeName='${storeName.substring(0,12)}...';

    String storeAddr=nearStore.address!;
    if(storeAddr.length>15) storeAddr='${storeAddr.substring(0,12)}...';
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(8),
      width: customerInfoViewModel.screenWidth,
      height: customerInfoViewModel.screenHeight / 4,
      child: Column(
        children: [
          //프로필 사진, 닉, 날짜
          Container(
            child: Row(
              children: [
                //프사
                Container(
                  width: customerInfoViewModel.screenWidth / 3,
                  // 정사각형의 가로 길이
                  height: customerInfoViewModel.screenHeight / 8,
                  // 정사각형의 세로 길이
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey, // 테두리 색상 설정
                      width: 1.0, // 테두리 두께 설정
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: NetworkImage(
                            '${nearStore.imageUrl}')
                      // 이미지 파일의 경로
                    ),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(4.0),
                      child: Column(
                        children: [
                          Text(
                            storeName,
                            maxLines: 1,
                            style: TextStyle(
                              fontWeight: FontWeight.w100,
                              fontSize: customerInfoViewModel
                                  .screenHeight /
                                  40,
                            ),
                          ),
                          Text(
                            storeAddr,
                            maxLines: 1,
                            style: TextStyle(
                              fontWeight: FontWeight.w100,
                              fontSize: customerInfoViewModel
                                  .screenHeight /
                                  40,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          //게시판 내용 텍스트
        ],
      ),
    );
  }
}
