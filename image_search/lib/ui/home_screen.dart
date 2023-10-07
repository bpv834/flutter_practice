import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:image_search/data/pixabay_api.dart';
import 'package:image_search/data/photo_provider.dart';
import 'package:image_search/ui/home_view_model.dart';
import 'package:image_search/ui/widget/photo_widget.dart';
import 'package:provider/provider.dart';

import '../model/Photo.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  //state클래스가 아닌 상위 클래스에서 받아 의존성 제거(widget.으로 접근함)
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _controller = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<HomeViewModel>();
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          '이미지 앱',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _controller,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  onPressed: () async {
                    await viewModel.fetch(_controller.text);
                  },
                  icon: Icon(Icons.search),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: GridView.builder(
                padding: EdgeInsets.all(8),
                itemCount: viewModel.photos.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  //열 개수
                    crossAxisCount: 2,
                    crossAxisSpacing: 16,
                    mainAxisSpacing: 16),
                itemBuilder: (context, index) {
                  final photo = viewModel.photos[index];
                  return PhotoWidget(photo: photo);
                }),
          )
        ],
      ),
    );
  }
}
