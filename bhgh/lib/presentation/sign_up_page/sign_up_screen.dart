import 'package:bhgh/core/router/router.dart';
import 'package:bhgh/presentation/sign_up_page/sign_up_view_model.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _rrnController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _mainHabitController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _rrnController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _mainHabitController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<SignUpViewModel>();
    final state = viewModel.state;
    return Scaffold(
      appBar: AppBar(title: Text('회원가입')),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                TextFormField(
                  autofocus: true,
                  controller: _nameController,
                  decoration: InputDecoration(labelText: '이름'),
                  //validator : 텍스트 안에 값이 있는가 검증
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return '이름을 입력하세요';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: _rrnController,
                  decoration: InputDecoration(labelText: '주민등록번호'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return '주민등록번호를 입력하세요';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: _emailController,
                  decoration: InputDecoration(labelText: '이메일'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return '이메일을 입력하세요';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: _passwordController,
                  decoration: InputDecoration(labelText: '비밀번호'),
                  obscureText: true,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return '비밀번호를 입력하세요';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: _mainHabitController,
                  decoration: InputDecoration(labelText: '대표 나쁜 습관'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return '대표 나쁜 습관을 입력하세요';
                    }
                    return null;
                  },
                ),
                ...state.habitControllers.asMap().entries.map((entry) {
                  int index = entry.key;
                  TextEditingController controller = entry.value;
                  return Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          controller: controller,
                          decoration: InputDecoration(
                            labelText: '나쁜 습관 ${index + 1}',
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return '나쁜 습관을 입력하세요';
                            }
                            return null;
                          },
                        ),
                      ),
                      IconButton(
                        icon: Icon(Icons.remove_circle),
                        onPressed: () => viewModel.removeHabit(index),
                      )
                    ],
                  );
                }),
                ElevatedButton(
                  onPressed: viewModel.addHabit,
                  child: Text('나쁜 습관 추가'),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () async{
                    if (_formKey.currentState!.validate()) {
                      // 폼이 유효할 때 처리 로직을 여기에 추가하세요.
                      await viewModel.signup(_emailController, _passwordController, _nameController, _rrnController, _mainHabitController);
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('메일을 확인해 주세요')),
                      );
                      context.push('/loginPage');
                    }
                  },
                  child: Text('회원가입'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}