import 'package:flutter/material.dart';

import '../board_page/board_page/board_screen.dart';
import '../home_page/home_screen.dart';
import '../map_page/map_screen.dart';
import '../my_page/my_screen.dart';
class NavViewModel with ChangeNotifier{
   List<Widget> _pages = [
    HomeScreen(),
    BoardScreen(),
    MapScreen(),
    MyScreen(),
  ];

  List<Widget> get pages => _pages;

  set setPages(List<Widget> value) {
    _pages = value;
  }

   Widget getPageAtIndex(int index) {
     if (index >= 0 && index < _pages.length) {
       return _pages[index];
     } else {
       // Return a default widget or handle the out-of-bounds case as needed.
       return Container();
     }

   }
}
