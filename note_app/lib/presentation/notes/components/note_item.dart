import 'package:flutter/material.dart';
import 'package:note_app/ui/colors.dart';

import '../../../domain/model/note.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key, required this.note, this.onDeleteTap});

  final Note note;
  final Function? onDeleteTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Stack(
        children: [
          //Stack 안에 컨테이너 들어가면 크기가 컨텐츠만큼 잡힘 따라서 width 지정해야함
          Container(
            //화면 꽉채우기
            width: double.infinity,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color(note.color),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  note.title,
                  //한줄로만 보여줌
                  maxLines: 1,
                  // 넘치는 부분 ,,,표시
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.headlineLarge!.apply(color: darkGray),
                ),
                SizedBox(height: 8),
                Text(
                  note.content,
                  //한줄로만 보여줌
                  maxLines: 3,
                  // 넘치는 부분 ,,,표시
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.bodyMedium!.apply(color: darkGray),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 8, // 또는 원하는 값으로 설정
            right: 8, // 또는 원하는 값으로 설정
            child: GestureDetector(
              onTap: () {
                onDeleteTap?.call();
              },
              child: Icon(Icons.delete),
            ),
          )
        ],
      ),
    );
  }
}
