import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class NewMessage extends StatefulWidget {
  const NewMessage({Key? key}) : super(key: key);

  @override
  State<NewMessage> createState() => _NewMessageState();
}

class _NewMessageState extends State<NewMessage> {
  @override
  //내가 보낼 값 담을 변수
  var userEnterMessage = '';
  final _controller=TextEditingController();
  void sendMessage() async{
    FocusScope.of(context).unfocus();
    final user = FirebaseAuth.instance.currentUser;
    //collection().get메서드는 Future를 리턴받음
    final userData= await FirebaseFirestore.instance.collection('user').doc(user!.uid).get();
    FirebaseFirestore.instance.collection('chat').add({
      'text': userEnterMessage,
      'time':Timestamp.now(),//cloud_firestore 패키지에서 제공,
      'userID' :user!.uid,
      'userName':userData.data()!['username']
    });
    //메시지를 db에 저장, 보낸 후 텍스트 필드를 컨트롤러를 이용해 초기화
    _controller.clear();
  }
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 8),
      padding: EdgeInsets.all(8),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              //텍스트필드 문자가 길어지면 자동 줄바꿈
              maxLines: null,
              controller: _controller,
              onChanged: (value) {
                setState(
                      () {
                    userEnterMessage = value;
                  },
                );
              },
              decoration: InputDecoration(
                labelText: 'Send a message...',
              ),
              //사용자가 입력한 값 가져오기 위해 onchanged
            ),
          ),
          IconButton(
            //_userEnterMessage의 공백을 제거한것이 null이면 비활성화
            //메서드의 괄호가 없다면 위치를 참조 할 수 있다는 의미
            onPressed: userEnterMessage.trim().isEmpty? null : sendMessage,
            //텍스트가 입력될때만 활성화
            icon: Icon(Icons.send),
            color: Colors.blue,
          ),
        ],
      ),
    );
  }
}
