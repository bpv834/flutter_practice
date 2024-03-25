import 'package:book_store/core/customer_info_view_model.dart';
import 'package:book_store/presentation/store_page/store_view_page/store_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class StoreSimpleInfo extends StatelessWidget {
  StoreSimpleInfo({
    super.key,
    required this.id,
    required this.profileUrl,
    required this.storeName,
    required this.storeAddr,
    required this.category,
  });

  final String? profileUrl;
  final String? storeName;
  final String? storeAddr;
  final String? category;
  final int id;

  @override
  Widget build(BuildContext context) {
    final customerInfoViewModel = context.read<CustomerInfoViewModel>();
    final storeViewModel = context.read<StoreViewModel>();

    String abbreviatedAddr = storeAddr ?? '서점 주소';
    if (abbreviatedAddr.length > 18) {
      abbreviatedAddr = abbreviatedAddr.substring(0, 15) + '...';
    }

    String abbreviatedName = storeName ?? '서점 이름';
    if (abbreviatedName.length > 10) {
      abbreviatedName = abbreviatedName.substring(0, 7) + '...';
    }
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: Colors.black,
          )),
      child: Row(
        children: [
          //서점 사진
          Container(
            width: customerInfoViewModel.screenWidth / 4,
            // 정사각형의 가로 길이
            height: customerInfoViewModel.screenHeight / 7,
            // 정사각형의 세로 길이
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey, // 테두리 색상 설정
                width: 1.0, // 테두리 두께 설정
              ),
              borderRadius: BorderRadius.circular(16.0),
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(profileUrl ??
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
                  abbreviatedName,
                  maxLines: 1,
                  style: TextStyle(
                    fontSize: customerInfoViewModel.screenHeight / 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  abbreviatedAddr,
                  style: TextStyle(
                    fontSize: customerInfoViewModel.screenHeight / 40,
                  ),
                  maxLines: 1,
                ),
                Text(
                  category ?? '카테고리',
                  style: TextStyle(
                    fontSize: customerInfoViewModel.screenHeight / 40,
                  ),
                  maxLines: 1,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
