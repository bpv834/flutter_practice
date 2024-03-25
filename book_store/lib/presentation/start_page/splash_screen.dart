import 'dart:async';

import 'package:book_store/core/customer_info_view_model.dart';
import 'package:book_store/presentation/board_page/board_page/board_view_model.dart';
import 'package:book_store/presentation/home_page/home_screen.dart';
import 'package:book_store/presentation/login_page/login_screen.dart';
import 'package:book_store/presentation/map_page/map_view_model.dart';
import 'package:book_store/presentation/start_page/splash_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../home_page/home_view_model.dart';
import '../store_page/store_view_page/store_view_model.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  double screenHeight = 0;
  double screenWidth = 0;

  bool _isInitialized = false;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (!_isInitialized) {
      _waitForLists(context);
    }
  }

  void _waitForLists(BuildContext context) async {
    final customViewModel = context.read<CustomerInfoViewModel>();
    final splashViewModel = context.read<SplashViewModel>();
    final boardViewModel = context.read<BoardViewModel>();
    final homeViewModel = context.read<HomeViewModel>();

    LatLong latLong= await splashViewModel.getCurrentLocation();
    customViewModel.setCurrentLocation(latLong.lat, latLong.long);

    print('${customViewModel.lat} : ${customViewModel.long}');

    // Wait for getNearByList to complete
    await splashViewModel.getNearByStores(customViewModel);
    print ('token: ${customViewModel.token}');
    await boardViewModel.getBoardList(customViewModel.token);

    await homeViewModel.getBestBoardList();
    // Once getNearByList completes, initialize the view model
    _initializeViewModel(context);
  }

  Future<void> _initializeViewModel(BuildContext context) async {
    // Access MediaQuery here
    MediaQueryData mediaQuery = MediaQuery.of(context);
    screenHeight = mediaQuery.size.height;
    screenWidth = mediaQuery.size.width;

    // Set screen dimensions in the CustomerInfoViewModel
    final customViewModel = context.read<CustomerInfoViewModel>();
    customViewModel.setScreenHeight(screenHeight);
    customViewModel.setScreenWidth(screenWidth);

    setState(() {
      _isInitialized = true;
    });

    Future.delayed(Duration(seconds: 1), () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => LoginScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          // 가로폭을 화면 전체로 설정
          child: Image.network(
              "https://cdn5.vectorstock.com/i/1000x1000/10/04/a-book-vector-20321004.jpg"),
        ),
      ),
    );
  }
}
