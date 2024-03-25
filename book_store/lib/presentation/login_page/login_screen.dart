import 'dart:convert';
import 'dart:io';

import 'package:book_store/core/customer_info_view_model.dart';
import 'package:book_store/domain/model/user_info.dart';
import 'package:book_store/presentation/home_page/home_screen.dart';
import 'package:book_store/presentation/home_page/home_view_model.dart';
import 'package:book_store/presentation/input_inform_page/input_infrom_screen.dart';
import 'package:book_store/presentation/login_page/login_view_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:kakao_flutter_sdk_user/kakao_flutter_sdk_user.dart';
import 'package:provider/provider.dart';

import 'login_platform.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {


  final LoginPlatform _loginPlatform = LoginPlatform.none;

  void signInWithKakao(BuildContext context) async {
    try {
      OAuthToken? token;
      bool isInstalled = await isKakaoTalkInstalled();
      bool hasToken=false;

      if (await AuthApi.instance.hasToken()) {
        try {
          print('토큰이 존재');
          //유효성 체크를 해서 토큰이 있으면
          hasToken=true;
          AccessTokenInfo tokenInfo = await UserApi.instance.accessTokenInfo();
          print('토큰 유효성 체크 성공 ${tokenInfo.id} ${tokenInfo.expiresIn}');
          //로그인 진행
          try {
            token = isInstalled
                ? await UserApi.instance.loginWithKakaoTalk()
                : await UserApi.instance.loginWithKakaoAccount();
            print('로그인 성공 ${token.accessToken}');
          } catch (error) {
            print('로그인 실패 $error');
          }
        } catch (error) {
          //토큰에 문제가 있으면
          if (error is KakaoException && error.isInvalidTokenError()) {
            print('토큰 만료 $error');
          } else {
            print('토큰 정보 조회 실패 $error');
          }
          //토큰을 다시 받는 작업 시행
          try {
            //로그인 절차 진행
            token = isInstalled
                ? await UserApi.instance.loginWithKakaoTalk()
                : await UserApi.instance.loginWithKakaoAccount();
            print('로그인 성공 ${token.accessToken}');
          } catch (error) {
            print('로그인 실패 $error');
          }
        }
      } else {
        //유효성 체크를 해서 토큰이 없으면
        //처음 로그인 하는 상황
        print('발급된 토큰 없음');
        try {
          //로그인 절차 진행
          token = isInstalled
              ? await UserApi.instance.loginWithKakaoTalk()
              : await UserApi.instance.loginWithKakaoAccount();
          print('로그인 성공 ${token.accessToken}');

          final url = Uri.https('kapi.kakao.com', '/v2/user/me');
          final response = await http.get(
            url,
            headers: {
              HttpHeaders.authorizationHeader: 'Bearer ${token.accessToken}'
            },
          );
          final profileInfo = json.decode(response.body);
          final id = profileInfo['id'];
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => InputInformScreen(
                id: id,
              ),
            ),
          );
        } catch (error) {
          print('로그인 실패 $error');
        }
      }

      if(hasToken){
        final url = Uri.https('kapi.kakao.com', '/v2/user/me');
        final response = await http.get(
          url,
          headers: {
            HttpHeaders.authorizationHeader: 'Bearer ${token!.accessToken}'
          },
        );
        final customerInfoViewModel = context.read<CustomerInfoViewModel>();
        final homeViewModel = context.read<HomeViewModel>();
        final loginViewModel = context.read<LoginViewModel>();

        final profileInfo = json.decode(response.body);
        final id = profileInfo['id'];

        UserInfo userInfo = await loginViewModel.getUserInfo(id);

        customerInfoViewModel.setId(userInfo.id);
        customerInfoViewModel.setNickName(userInfo.nickname);
        customerInfoViewModel.setAge(userInfo.age);
        customerInfoViewModel.setCategory(userInfo.category);
        customerInfoViewModel.setProfileImageUrl(userInfo.profileImage);
        customerInfoViewModel.setPlatform(LoginPlatform.kakao);
        print('토큰있음 userId: ${userInfo.id}, userNick: ${userInfo.nickname}, userAge: ${userInfo.age}, userImageLink: ${userInfo.profileImage}');

        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => HomeScreen()),
        );
        homeViewModel.setCurrentPage = 0;
      }

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
            Text('카카오 계정으로 로그인 하기'),
            Center(
              child: customViewModel.loginPlatform != LoginPlatform.none
                  ? _logoutButton()
                  : Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        _loginButton(
                          'kakao',
                          () => signInWithKakao(context),
                        )
                      ],
                    ),
            ),
            TextButton(
              onPressed: () {},
              child: Text('카카오 계정으로 회원가입 하기'),
            )
          ],
        ),
      ),
    );
  }
}
