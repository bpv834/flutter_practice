import 'package:flutter/material.dart';
import 'package:image_search_review/data/data_source/pixabay_api.dart';
import 'package:image_search_review/presentation/home/home_screen.dart';
import 'package:image_search_review/data/repository/photo_api_repository_impl.dart';
import 'package:image_search_review/presentation/home/home_veiw_model.dart';
import 'package:provider/provider.dart';
import 'package:http/http.dart' as http;
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ChangeNotifierProvider(
          create: (_) => HomeViewModel(
              repository: PhotoApiRepositoryImpl(PixabayApi(http.Client()))),
          child: HomeScreen()),
    );
  }
}
