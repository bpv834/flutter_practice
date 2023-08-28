import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/tab/account/account_page.dart';
import 'package:instagram_clone/tab/home/home_page.dart';
import 'package:instagram_clone/tab/search/search_page.dart';

class TabPage extends StatefulWidget {
  const TabPage({super.key});

  @override
  State<TabPage> createState() => _TabPageState();
}

class _TabPageState extends State<TabPage> {
  int _currentIndex=0;
  final _pages=  [
    HomePage(),
    SearchPage(),
    AccountPage(),
    ProfileScreen(
      providers: [
        EmailAuthProvider(),
      ],
      avatarSize: 24,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      bottomNavigationBar: BottomNavigationBar(
        //items가 4개 이상이면 처리해줘야 함
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: (value){
          setState(() {
            _currentIndex=value;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
            ),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
            ),
            label: 'Account',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.account_circle_outlined,
            ),
            label: 'Account',
          ),
        ],
      ),
      body: _pages[_currentIndex],
    );
  }
}
