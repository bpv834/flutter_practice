import 'dart:async';

import 'package:book_store/core/customer_info_view_model.dart';
import 'package:book_store/presentation/home_page/home_screen.dart';
import 'package:book_store/presentation/start_page/splash_view_model.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:provider/provider.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  double screenHeight = 0;
  double screenWidth = 0;

  Future<void> _initializeViewModel() async {
    // Simulate asynchronous operations if needed
    await Future.delayed(Duration(seconds: 2));

    // Access MediaQuery here
    MediaQueryData mediaQuery = MediaQuery.of(context);
    screenHeight = mediaQuery.size.height;
    screenWidth = mediaQuery.size.width;

    // Set screen dimensions in the CustomerInfoViewModel
    final customerInfoViewModel = context.read<CustomerInfoViewModel>();
    customerInfoViewModel.setScreenHeight(screenHeight);
    customerInfoViewModel.setScreenWidth(screenWidth);
  }

  @override
  void initState() {
    super.initState();
    _initializeViewModel();
    // Wait for 5 seconds and then navigate to HomeScreen
    Future.delayed(Duration(seconds: 5), () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => HomeScreen()),
      );
    });
    @override
    void initState() {
      // TODO: implement initState
      super.initState();
      SplashViewModel splashViewModel=context.read<SplashViewModel>();
      splashViewModel.getCurrentLocation(context.read<CustomerInfoViewModel>());
      debugPrint('이닛@@@@');
    }
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
