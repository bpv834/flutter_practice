import 'package:flutter/material.dart';
import 'package:getx_level_3_login/controller/auth_controller.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Text('Welcome'),
            IconButton(
              onPressed: () {
                AuthController.instance.logout();
              },
              icon: Icon(Icons.login_outlined),
            ),
          ],
        ),
      ),
    );
  }
}
