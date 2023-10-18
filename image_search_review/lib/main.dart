import 'package:flutter/material.dart';
import 'package:image_search_review/data/data_source/pixabay_api.dart';
import 'package:image_search_review/di/provider_setup.dart';
import 'package:image_search_review/domain/use_case/get_photo_use_case.dart';
import 'package:image_search_review/presentation/home/home_screen.dart';
import 'package:image_search_review/data/repository/photo_api_repository_impl.dart';
import 'package:image_search_review/presentation/home/home_veiw_model.dart';
import 'package:provider/provider.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(
    MultiProvider(
      providers: globalProviders,
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}
