import 'dart:io';
import 'package:book_store/core/customer_info_view_model.dart';
import 'package:book_store/presentation/home_page/home_screen.dart';
import 'package:book_store/presentation/home_page/home_view_model.dart';
import 'package:book_store/presentation/input_inform_page/input_inform_state.dart';
import 'package:book_store/presentation/input_inform_page/input_inform_view_model.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';

class InputInformScreen extends StatelessWidget {
  InputInformScreen({Key? key, required this.id}) : super(key: key);

  final int id;
  final TextEditingController _nickController = TextEditingController();
  final TextEditingController _ageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final customerViewModel = context.watch<CustomerInfoViewModel>();
    final viewModel = context.watch<InputInformViewModel>();
    final homeViewModel = context.read<HomeViewModel>();
    InputInformState state = viewModel.state;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Text(
          '정보입력',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('ID:'),
                  Text('$id'),
                ],
              ),
              SizedBox(height: 16),
              Row(
                children: [
                  Container(
                    height: customerViewModel.screenHeight / 8,
                    width: customerViewModel.screenWidth / 5,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: FileImage(File(viewModel.image.path)),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  TextButton(
                      onPressed: () {
                        viewModel.getImage(ImageSource.gallery);
                      },
                      child: Text('수정'))
                ],
              ),
              Row(
                children: [
                  Text('닉네임:'),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(labelText: '닉네임'),
                      controller: _nickController,
                    ),
                  ),
                  SizedBox(width: 8),
                  TextButton(
                    onPressed: () {
                      // 중복 확인 코드 구현
                    },
                    child: Text('중복확인'),
                  ),
                ],
              ),
              SizedBox(height: 16),
              Row(
                children: [
                  Text('나이:'),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(labelText: '나이'),
                      controller: _ageController,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16),
              Text('카테고리:'),
              Wrap(
                spacing: 8.0,
                runSpacing: 8.0,
                children: viewModel.categories.map((category) {
                  bool isSelected =
                      viewModel.selectedCategories.contains(category);
                  return ElevatedButton.icon(
                    onPressed: () {
                      viewModel.selectCategory(category);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: isSelected ? Colors.blue : Colors.grey,
                    ),
                    icon: Container(
                      child: isSelected ? Icon(Icons.check) : null,
                    ),
                    label: Text(category),
                  );
                }).toList(),
              ),
              SizedBox(height: 16),
              ElevatedButton(
                //회원가입 버튼
                onPressed: () async {
                  int myAge = int.tryParse(_ageController.text) ?? 0;
                  String myCategory = '';
                  myCategory = viewModel.selectedCategories.join(', ');
                  state = state.copyWith(
                    id: id,
                    nickName: _nickController.text,
                    age: myAge,
                    category: myCategory,
                  );
                  await viewModel.register(state, customerViewModel, viewModel.image);
                  print('viewModel.image.path: @@@${viewModel.image.path}');
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => HomeScreen()),
                  );
                  homeViewModel.setCurrentPage = 0;
                },
                child: Text('회원가입'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
