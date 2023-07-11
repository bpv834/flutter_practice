
import 'package:flutter/material.dart';
import 'package:reactive_layout/responsive/mobile_body.dart';
import 'package:reactive_layout/responsive/mobile_desktop.dart';
import 'package:reactive_layout/responsive/responsive_layout.dart';

class MyPage extends StatefulWidget {
  const MyPage({super.key});

  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  @override
  Widget build(BuildContext context) {

    final currentWidth=MediaQuery.of(context).size.width;
    return Scaffold(
      body: ResponsiveLayout(
        mobileBody: MobileBody(),
        desktopBody: MobileDesktop(),
      ),
    );
  }
}
