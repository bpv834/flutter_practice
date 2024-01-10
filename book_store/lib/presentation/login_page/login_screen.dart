import 'dart:convert';
import 'dart:io';
import 'dart:math';
import 'package:book_store/core/customer_info_view_model.dart';
import 'package:book_store/presentation/home_page/home_screen.dart';
import 'package:book_store/presentation/home_page/home_view_model.dart';
import 'package:book_store/presentation/nav_page/nav_screen.dart';
import 'package:provider/provider.dart';

import 'login_platform.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:http/http.dart' as http;
import 'package:kakao_flutter_sdk_user/kakao_flutter_sdk_user.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    FlutterNativeSplash.remove();
  }

  LoginPlatform _loginPlatform = LoginPlatform.none;

  void signInWithKakao() async {
    try {
      bool isInstalled = await isKakaoTalkInstalled();

      OAuthToken token = isInstalled
          ? await UserApi.instance.loginWithKakaoTalk()
          : await UserApi.instance.loginWithKakaoAccount();

      final url = Uri.https('kapi.kakao.com', '/v2/user/me');

      final response = await http.get(
        url,
        headers: {
          HttpHeaders.authorizationHeader: 'Bearer ${token.accessToken}'
        },
      );

      final customerInfoViewModel = context.read<CustomerInfoViewModel>();
      final homeViewModel = context.read<HomeViewModel>();
      final profileInfo = json.decode(response.body);
      final id = profileInfo['id'];
      final picUrl = json.decode(response.body)['properties']['profile_image'];

      customerInfoViewModel.setId(id);
      customerInfoViewModel.setProfileImageUrl(picUrl);
      customerInfoViewModel.setPlatform(LoginPlatform.kakao);

      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => HomeScreen()),
      );
      homeViewModel.setCurrentPage=0;
    } catch (error) {
      print('카카오톡으로 로그인 실패 $error');
    }
  }

  void signOut() async {
    final customerInfoViewModel = context.read<CustomerInfoViewModel>();
    switch (_loginPlatform) {
      case LoginPlatform.google:
        break;
      case LoginPlatform.kakao:
        await UserApi.instance.logout();
        break;
      case LoginPlatform.naver:
        break;
      case LoginPlatform.none:
        break;
    }

    customerInfoViewModel.setPlatform(LoginPlatform.none);
  }

  Widget _loginButton(String path, VoidCallback onTap) {
    return Card(
      elevation: 18.0,
      shape: const CircleBorder(),
      clipBehavior: Clip.antiAlias,
      child: Ink.image(
        image: AssetImage('images/$path.png'),
        width: 60,
        height: 60,
        child: InkWell(
          borderRadius: const BorderRadius.all(
            Radius.circular(35.0),
          ),
          onTap: onTap,
        ),
      ),
    );
  }

  Widget _logoutButton() {
    return ElevatedButton(
      onPressed: signOut,
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(
          const Color(0xff0165E1),
        ),
      ),
      child: const Text('로그아웃'),
    );
  }

  @override
  Widget build(BuildContext context) {
    final customViewModel = context.watch<CustomerInfoViewModel>();
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('구글  로그인'),
            Text('네이버  로그인'),
            Center(
              child: customViewModel.loginPlatform != LoginPlatform.none
                  ? _logoutButton()
                  : Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        _loginButton(
                          'kakao',
                          signInWithKakao,
                        )
                      ],
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
