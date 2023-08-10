import 'package:flutter/material.dart';
import 'package:navigation_bar_metarial_design_3/pages/home.dart';
import 'package:navigation_bar_metarial_design_3/pages/search.dart';
import 'package:navigation_bar_metarial_design_3/pages/settings.dart';

class Navigation extends StatefulWidget {
  const Navigation({super.key});

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        selectedIndex: selectedIndex,
        onDestinationSelected: (value) => setState(() {
          selectedIndex = value;
        }),
        //네비바의 아이콘들
        destinations: [
          NavigationDestination(
            icon: Icon(Icons.home),
            label: "Home",
            //선택됐을때 아이콘
            selectedIcon: Icon(
              Icons.home,
              //Theme.of(context)Flutter 앱의 테마에 정의된 현재 테마 데이터에 액세스
              color: Theme.of(context).colorScheme.onSecondaryContainer,
            ),
          ),
          NavigationDestination(
            icon: Icon(Icons.search_off_rounded),
            label: "Search",
            selectedIcon: Icon(
              Icons.home,
              color: Theme.of(context).colorScheme.onSecondaryContainer,
            ),
          ),
          NavigationDestination(
            icon: Icon(Icons.settings),
            label: "Settings",
            selectedIcon: Icon(
              Icons.settings,
              color: Theme.of(context).colorScheme.onSecondaryContainer,
            ),
          ),
        ],
        animationDuration: Duration(milliseconds: 500),
      ),
      appBar: AppBar(
        title: Text("Navigation"),
      ),
      body: Center(
        //은 여러 화면 중 하나만 보이도록 하는 스크린 전환을 쉽게 구현할 수 있도록 도와주는 위젯입니다.
        child: IndexedStack(
          index: selectedIndex,
          children: [
            HomePage(),
            SearchPage(),
            Settings(),
          ],
        ),
      ),
    );
  }
}
