import 'package:flutter/material.dart';
import 'package:chat_bubbles/chat_bubbles.dart';

class ChatBubble extends StatelessWidget {
  const ChatBubble(this.userName, this.message, this.isMe, {super.key});
  final String? userName;
  final String? message;
  final bool isMe;

  @override
  Widget build(BuildContext context) {
    //자식 위젯의 너비를 지정할 수 있음
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: isMe?MainAxisAlignment.end:MainAxisAlignment.start,
        children: [
          if(!isMe)
          Container(
            padding: EdgeInsets.all(8),
            color: Colors.black,
            width: 45,
            height: 45,
            child: Text(
              '프로필사진'
            ),
          ),
          Column(
            children: [
              //내 채팅버블
              if(isMe)
              BubbleSpecialThree(
                text: '$message',
                color: Color(0xFF1B97F3),
                tail: false,
                textStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 16
                ),
              ),
              //상대방 채팅 버블
              if(!isMe)
              Text('$userName'),
              if(!isMe)
              BubbleSpecialThree(
                text: '$message',
                color: Color(0xFFE8E8EE),
                tail: true,
                textStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 16
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
