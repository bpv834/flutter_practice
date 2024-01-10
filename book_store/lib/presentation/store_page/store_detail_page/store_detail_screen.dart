import 'package:book_store/core/customer_info_view_model.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

import '../store_review_page/store_review_screen.dart';

class StoreDetailScreen extends StatelessWidget {
  const StoreDetailScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    final customerInfoViewModel = context.read<CustomerInfoViewModel>();

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(8),
          child: Column(
            children: [
              // 서점 사진
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: customerInfoViewModel.screenHeight / 1.8,
                      child: Image.network(
                        'https://e1.pngegg.com/pngimages/487/453/png-clipart-iu-thumbnail.png',
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ],
              ),
              // 서점 정보 및 북마크
              Padding(
                padding: EdgeInsets.all(15),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(width: 1),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '서점이름',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                          Text('서점주소'),
                        ],
                      ),
                      Container(
                        child: Row(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.bookmark),
                            ),
                            IconButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => StoreReviewScreen()),
                                );
                              },
                              icon: Icon(Icons.reviews),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              // 서점 정보 리스트
              ListView(
                padding: EdgeInsets.symmetric(vertical: 7, horizontal: 15),
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                children: [
                  buildInfoRow(Icons.call, '010-3057-1270'),
                  buildInfoRow(FontAwesomeIcons.instagram, '@bpv834'),
                  buildInfoRow(FontAwesomeIcons.clock, '평일 11:00~22:30'),
                  buildInfoRow(FontAwesomeIcons.clock, '토요일 11:00~22:30'),
                  buildInfoRow(FontAwesomeIcons.clock, '일요일 11:00~22:30'),
                  buildInfoRow(FontAwesomeIcons.clock, '휴무일 :  화요일'),
                ],
              ),
              Container(
                height: customerInfoViewModel.screenHeight / 4,
                decoration: BoxDecoration(
                  border: Border(
                    top: BorderSide(width: 1),
                    bottom: BorderSide(width: 1),
                  ),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Text(
                        '서점 특징 : 어린이 및 성인 영어 원서를 직수입하여 판매합니다. 소규모 음악회 등 다양한 모임과 문화예술 행사를 개최합니다,',
                        maxLines: null,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        '특이사항 : sssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssss어린이 및 성인 영어 원서를 직수입하여 판매합니다. 소규모 음악회 등 다양한 모임과 문화예술 행사를 개최합니다,',
                        maxLines: null,
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(4),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text('블로그 리뷰')
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 4),
                child: InkWell(
                  onTap: (){},
                  child: Container(
                    height: customerInfoViewModel.screenHeight / 4,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      image: DecorationImage(
                        image: NetworkImage(
                          'https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2FcOFyeH%2FbtrSN07bAgX%2F6bKR62vtBu5fPUKKKjKOnK%2Fimg.jpg',
                        ),
                        fit: BoxFit.cover,
                      ),
                      color: Color.fromRGBO(
                          255, 255, 255, 0.8), // 0.8 represents 80% opacity
                    ),
                    child: Center(
                      child: Text(
                        'Your content goes here',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 4),
                child: InkWell(
                  onTap: (){},
                  child: Container(
                    height: customerInfoViewModel.screenHeight / 4,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      image: DecorationImage(
                        image: NetworkImage(
                          'https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2FcOFyeH%2FbtrSN07bAgX%2F6bKR62vtBu5fPUKKKjKOnK%2Fimg.jpg',
                        ),
                        fit: BoxFit.cover,
                      ),
                      color: Color.fromRGBO(
                          255, 255, 255, 0.8), // 0.8 represents 80% opacity
                    ),
                    child: Center(
                      child: Text(
                        'Your content goes here',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                ),
              ),
              Column(
                children: [
                  Text('주소: 서울시 성북구 삼양로 15-2'),
                  Container(
                    height: customerInfoViewModel.screenHeight / 2,
                    color: Colors.grey,
                  ),
                  Container(
                    height: customerInfoViewModel.screenHeight / 5,
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget buildInfoRow(IconData iconData, String text) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 7),
      child: Row(
        children: [
          Icon(iconData),
          SizedBox(width: 10),
          Text(text),
        ],
      ),
    );
  }
}
