import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_getx_2/personal_card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: PersonalCard( ),
    );
  }
}
