import 'package:flutter/material.dart';
import 'package:note_app/presentation/notes/notes_screen.dart';
import 'package:note_app/ui/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme:
            Theme.of(context).appBarTheme.copyWith(backgroundColor: darkGray),
        floatingActionButtonTheme:
            //Theme.of(context).floatingActionButtonTheme는 현재 테마에서 floatingActionButton 테마를 가져옵니다.
            Theme.of(context).floatingActionButtonTheme.copyWith(
                  backgroundColor: lightBlue,
                  foregroundColor: darkGray,
                ),
        primaryColor: Colors.white,
        scaffoldBackgroundColor: darkGray,
      ),
      home: NoteScreen(),
    );
  }
}
