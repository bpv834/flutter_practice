import 'package:chat_firebase/screens/chat_screen.dart';
import 'package:chat_firebase/screens/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:firebase_auth/firebase_auth.dart';
void main() async{
  //플러터 코어 엔진을 초기화시키는 메서드/ 메인메소드 내에서 비동기 방식으로 반드시 WFB를 불러오고 firebase.init()메서드를 불러와야 됨
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}):super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chatting app',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
        //자체적으로 스트림을 통해 지속적으로 들어오는 데이터들을 구독하기 위한 기능
      home: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        //새로운 데이터가 들어올 때마다 snapshot에 저장하고 builder메서드를 통해서 매번 새로운 데이터로 화면에 출력할 수 있음
        builder: (context,snapshot){
          if(snapshot.hasData){
            return ChatScreen();
          }
          return LoginSignupScreen();
        },
      )
    );
  }
}
