import 'package:book_store/presentation/my_page/components/profile_image_stack.dart';
import 'package:book_store/presentation/my_page/my_page_ui_event.dart';
import 'package:book_store/presentation/my_page/my_page_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../core/customer_info_view_model.dart';
import '../home_page/home_view_model.dart';
import '../nav_page/bottom_bar.dart';
import '../nav_page/nav_view_model.dart';

class MyScreen extends StatelessWidget {
  const MyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<MyPageViewModel>();
    final customerInfoViewModel = context.watch<CustomerInfoViewModel>();
    TextEditingController _controller = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: const Text(
          '마이페이지',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        children: [
          Card(
            margin: const EdgeInsets.all(4.0),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Row(
                    children: [
                      const ProfileImageStack(),
                      SizedBox(width: customerInfoViewModel.screenWidth / 25),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          IconButton(
                            onPressed: () {
                              viewModel.onEvent(event: const MyPageUiEvent.clickBookmark('북마크', '북마크 서점'), context: context);
                            },
                            icon: const Icon(Icons.bookmark),
                            iconSize: customerInfoViewModel.screenWidth / 7,
                          ),
                          SizedBox(
                              width: customerInfoViewModel.screenWidth / 25),
                          IconButton(
                            onPressed: () {
                             viewModel.onEvent(event: const MyPageUiEvent.clickMyBoard('내가 쓴 게시글'), context: context);
                            },
                            icon: const Icon(Icons.my_library_books),
                            iconSize: customerInfoViewModel.screenWidth / 7,
                          ),
                          SizedBox(
                              width: customerInfoViewModel.screenWidth / 25),
                          IconButton(
                            onPressed: () {
                           viewModel.onEvent(event: const MyPageUiEvent.clickMyInteresting('내가 관심 있는 글'), context: context);
                            },
                            icon: const Icon(Icons.local_activity),
                            iconSize: customerInfoViewModel.screenWidth / 7,
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(
                            '닉네임 : ${customerInfoViewModel.nickname}',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                        ],
                      ),
                      IconButton(
                        onPressed: () async{
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: Text('닉네임 변경'),
                                content: TextField(
                                  controller: _controller,
                                  decoration: InputDecoration(hintText: '새로운 닉네임'),
                                ),
                                actions: [
                                  TextButton(
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                    child: Text('취소'),
                                  ),
                                  ElevatedButton(
                                    onPressed: () {
                                      viewModel.onEvent(event: MyPageUiEvent.changeNickName(_controller.text), context: context);
                                      Navigator.of(context).pop();
                                    },
                                    child: Text('변경'),
                                  ),
                                ],
                              );
                            },
                          );
                        },
                        icon: const Icon(Icons.edit),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        '나이 : ${customerInfoViewModel.age}',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'category : ${customerInfoViewModel.category}',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          TextButton(
            onPressed: () {
              viewModel.signOut(context);
              Navigator.pop(context);
            },
            child: const Text('log out'),
          )
        ],
      ),
      bottomNavigationBar:const BottomBar(),
    );
  }
}
