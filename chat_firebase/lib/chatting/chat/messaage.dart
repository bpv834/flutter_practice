import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'chat_bubbble.dart';

class Messages extends StatelessWidget {
  const Messages({super.key});

  @override
  Widget build(BuildContext context) {
    final user=FirebaseAuth.instance.currentUser;
    return StreamBuilder(
        //orderBy로 스탬프 시간순 내림차순으로 정렬
        stream: FirebaseFirestore.instance
            .collection('chat')
            .orderBy('time', descending: true)
            .snapshots(),
        builder: (context,
            AsyncSnapshot<QuerySnapshot<Map<String, dynamic>>> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          //stream을 통해 Firestore의 데이터를 비동기적으로 가져올 때 사용하는 StreamBuilder에서 나온 AsyncSnapshot 객체의 속성
          final chatDocs = snapshot.data!.docs;
          //리스트뷰는 가로 방향으로 꽉 채우는 기본 동작을 가지고 있음
          return ListView.builder(
            reverse: true,
            itemCount: chatDocs.length,
            itemBuilder: (context, index) {
              return ChatBubble(
                chatDocs[index]['userName'],
                chatDocs[index]['text'],
                chatDocs[index]['userID'].toString()==user!.uid,
              );
            },
          );
        });
  }
}
