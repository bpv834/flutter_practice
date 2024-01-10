import 'dart:async';

import 'package:book_store/presentation/board_page/board_detail_page/board_detail_ui_event.dart';
import 'package:book_store/presentation/board_page/board_detail_page/board_detail_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:intl/intl.dart';
import '../../../core/customer_info_view_model.dart';

class BoardDetailScreen extends StatefulWidget {
  const BoardDetailScreen({super.key});

  @override
  State<BoardDetailScreen> createState() => _BoardDetailScreenState();
}

class _BoardDetailScreenState extends State<BoardDetailScreen> {
  TextEditingController _controller = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    _controller.dispose();
    super.dispose();
  }

  String getFormattedDateAndTime() {
    DateTime now = DateTime.now();
    return DateFormat('dd.MM.yy HH:mm').format(now);
  }


  @override
  Widget build(BuildContext context) {
    final boardDetailViewModel = context.watch<BoardDetailViewModel>();
    //read는 한번구독 watch는 계속 구독....
    final customerInfoViewModel = context.read<CustomerInfoViewModel>();
    bool isGood=boardDetailViewModel.isLiked;
    return Scaffold(
      appBar: AppBar(
        title: Text('게시판'),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Column(
                children: [
                  //프로필 사진, 닉, 날짜
                  Stack(
                    children: [
                      Container(
                        child: Row(
                          children: [
                            //프사
                            Container(
                              width: customerInfoViewModel.screenWidth / 2,
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
                                        'https://e1.pngegg.com/pngimages/487/453/png-clipart-iu-thumbnail.png')
                                    // 이미지 파일의 경로
                                    ),
                              ),
                            ),
                            //닉, 시간
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.all(4.0),
                                  child: Text(
                                    '우이천금도끼',
                                    maxLines: 1,
                                    style: TextStyle(
                                      fontWeight: FontWeight.w100,
                                      fontSize:
                                          customerInfoViewModel.screenHeight /
                                              30,
                                    ),
                                  ),
                                ),
                                Text(
                                  getFormattedDateAndTime(),
                                  style: TextStyle(
                                    fontWeight: FontWeight.w100,
                                    fontSize:
                                        customerInfoViewModel.screenHeight / 30,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      //좋아요 버튼 컨테이너
                      Positioned(
                        bottom: 0.0,
                        right: 0.0,
                        child: InkWell(
                          onTap: (){
                            boardDetailViewModel.onEvent(BoardDetailUiEvent.likeTap(isGood));
                          },
                          child: Container(
                            child: isGood
                                ? Icon(
                              Icons.close,
                              color: Colors.blue,
                              size: 30.0,
                            )
                                : Icon(
                              Icons.thumb_up_outlined,
                              color: Colors.grey,
                              size: 30.0,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  //게시판 내용 텍스트
                  Container(
                    child: Text(
                      'ㅈssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssss',
                      style: TextStyle(fontSize: 30),
                      maxLines: null,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: Colors.black,
                ),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      //프사 컨테이너
                      Container(
                        width: customerInfoViewModel.screenWidth / 2,
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
                                  'https://e1.pngegg.com/pngimages/487/453/png-clipart-iu-thumbnail.png')
                              // 이미지 파일의 경로
                              ),
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.all(4.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  '댓글작성자',
                                  maxLines: 1,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w100,
                                    fontSize:
                                        customerInfoViewModel.screenHeight / 30,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          //댓글과 시간
                          Text(
                            getFormattedDateAndTime(),
                            style: TextStyle(
                              fontWeight: FontWeight.w100,
                              fontSize: customerInfoViewModel.screenHeight / 30,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        '댓글내용댓글내용댓글내용댓글내용댓글내용댓글내용댓글내용댓글내용댓글내용댓글내용댓글댓글내용댓글내용댓글내용댓글내용댓글내용댓글댓글내용댓글내용댓글내용댓글내용댓글내용댓글댓글',
                        maxLines: null,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: Colors.black,
                ),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      //프사 컨테이너
                      Container(
                        width: customerInfoViewModel.screenWidth / 2,
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
                                  'https://e1.pngegg.com/pngimages/487/453/png-clipart-iu-thumbnail.png')
                              // 이미지 파일의 경로
                              ),
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.all(4.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  '댓글작성자',
                                  maxLines: 1,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w100,
                                    fontSize:
                                        customerInfoViewModel.screenHeight / 30,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          //댓글과 시간
                          Text(
                            getFormattedDateAndTime(),
                            style: TextStyle(
                              fontWeight: FontWeight.w100,
                              fontSize: customerInfoViewModel.screenHeight / 30,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        '댓글내용댓글내용댓글내용댓글내용댓글내용댓글내용댓글내용댓글내용댓글내용댓글내용댓글댓글내용댓글내용댓글내용댓글내용댓글내용댓글댓글내용댓글내용댓글내용댓글내용댓글내용댓글댓글',
                        maxLines: null,
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      bottomSheet: Row(
        children: [
          Expanded(
            child: TextField(
              controller: _controller,
              decoration: InputDecoration(
                hintText: '텍스트를 입력하세요.',
                // 힌트 텍스트
                contentPadding: EdgeInsets.all(12.0),
                // 텍스트 입력 필드 내부의 여백 설정
              ),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.arrow_forward),
          )
        ],
      ),
    );
  }
}
