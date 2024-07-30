import 'package:bhgh/core/router/router.dart';
import 'package:bhgh/presentation/login_page/login_view_model.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<LoginViewModel>();
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              //이메일 텍스트
              TextFormField(
                controller: _emailController,
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.emailAddress,
              ),
              SizedBox(height: 16.0),
              //PW 텍스트
              TextFormField(
                controller: _passwordController,
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(),
                ),
                obscureText: true,
              ),
              SizedBox(height: 24.0),
              //로그인 버튼
              ElevatedButton(
                onPressed: () async{
                  // 로그인 로직 추가
                   viewModel.login(context, _emailController.text, _passwordController.text);
                },
                child: Text('Login'),
              ),
              SizedBox(height: 16.0),
              //회원가입 버튼
              TextButton(
                onPressed: () {
                  context.push('/signUpPage');
                  // 회원가입 화면으로 이동
                },
                child: Text('Sign Up'),
              ),
              SizedBox(height: 16.0),
              //비밀번호 찾기 버튼
              TextButton(
                onPressed: () {
                  // 비밀번호 찾기 화면으로 이동
                },
                child: Text('Forgot Password?'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}