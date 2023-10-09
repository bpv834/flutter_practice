import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'components/widget/photo_widget.dart';
import 'home_view_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  //state클래스가 아닌 상위 클래스에서 받아 의존성 제거(widget.으로 접근함)
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _controller = TextEditingController();
  StreamSubscription? _subscription;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    //바로 수행하면 viewModel을 가져오지 못함, 따라서 Future.microtask()안에서 수행시켜줌 컨텍스트 참조가 바로 안됨
    Future.microtask(() {
      final viewModel = context.read<HomeViewModel>();
      viewModel.eventStream.listen((event) {
        event.when(showSnackBar: (message) {
          final snackBar = SnackBar(content: Text(message));
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        });
      });
    });
    //initState()에선 context.watch() 불가, 단발성인 read()메서드 사용가능
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _controller.dispose();
    _subscription?.cancel();
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
