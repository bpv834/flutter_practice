import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          height: 400,
          width: 200,
          child: Lottie.asset("lottie/search.json"),
        ),
      ),
    );
  }
}
