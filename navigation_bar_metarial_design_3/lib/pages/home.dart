import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Home page is selected!',
              style: TextStyle(
                fontSize: 20
              ),
            ),
            SizedBox(
              height: 350,
              width: 450,
              child: Image.asset('image/coding_chef.gif'),
            )
          ],
        ),
      ),
    );
  }
}
