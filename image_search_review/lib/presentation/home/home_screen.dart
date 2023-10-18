import 'dart:async';

import 'package:flutter/material.dart';
import 'package:image_search_review/presentation/home/home_ui_event.dart';
import 'package:image_search_review/presentation/home/home_veiw_model.dart';
import 'package:provider/provider.dart';

import 'components/photo_widget.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

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
    Future.microtask(() {
      final viewModel = context.read<HomeViewModel>();
      viewModel.eventStream.listen((event) {
        event.when(showSnackBar: (message) {
          final snackBar = SnackBar(content: Text(message));
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        });
      });
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _controller.dispose();
    _subscription?.cancel();
  }

  Widget build(BuildContext context) {
    final viewModel = context.watch<HomeViewModel>();
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.white,
          title: Text(
            '이미지 검색 앱',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
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
                      final query = _controller.text;
                      viewModel.fetch(query);
                    },
                    icon: Icon(Icons.search),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            viewModel.state.isLoading
                ? CircularProgressIndicator()
                : Expanded(
                    child: GridView.builder(
                        itemCount: viewModel.state.photos.length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisSpacing: 16,
                            crossAxisSpacing: 16),
                        itemBuilder: (context, index) {
                          final photo = viewModel.state.photos[index];
                          return PhotoWidget(photo: photo);
                        }),
                  )
          ],
        ));
  }
}
