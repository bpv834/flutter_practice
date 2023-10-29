import 'package:flutter/material.dart';
import 'package:note_app/ui/colors.dart';

class AddEditNoteScreen extends StatefulWidget {
  AddEditNoteScreen({super.key});

  @override
  State<AddEditNoteScreen> createState() => _AddEditNoteScreenState();
}

class _AddEditNoteScreenState extends State<AddEditNoteScreen> {
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _contentController = TextEditingController();

  final List<Color> noteColors = [
    roseBud,
    primrose,
    wisteria,
    skyBlue,
    illusion,
  ];
  Color _color = roseBud;

  @override
  void dispose() {
    _contentController.dispose();
    _titleController.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.save),
      ),
      body: AnimatedContainer(
        padding: EdgeInsets.only(left: 16, right: 16, bottom: 16, top: 40),
        color: _color,
        duration: Duration(milliseconds: 500),
        child: Column(
          children: [
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: noteColors
                    .map(
                      (color) => InkWell(
                        //Inkwell == GestureDetector
                        child: _buildBackgroundColor(color: color, selected: _color == color),
                        onTap: () {
                          setState(() {
                            _color=color;
                          });
                        },
                      ),
                    )
                    .toList()),
            TextField(
              controller: _titleController,
              maxLines: 1,
              //Theme.of(context)를 사용하여 현재 context에서 사용 가능한 테마 정보를 가져옵니다.
              style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                    color: darkGray,
                  ),
              decoration: InputDecoration(
                hintText: '내용을 입력하시오',
                border: InputBorder.none,
              ),
            ),
            TextField(
              controller: _contentController,
              //내용에 따라 밑으로 내려감
              maxLines: null,
              //Theme.of(context)를 사용하여 현재 context에서 사용 가능한 테마 정보를 가져옵니다.
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: darkGray,
                  ),
              decoration: InputDecoration(
                hintText: '제목을 입력하시오',
                border: InputBorder.none,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBackgroundColor({required Color color, required bool selected}) {
    return Container(
      width: 60,
      height: 60,
      decoration: BoxDecoration(
        //박스 색깔
        color: color,
        shape: BoxShape.circle,
        boxShadow: [
          //그림자 속성
          BoxShadow(
              //그림자 색깔, 불투명도 높으면 진함 낮으면 연해짐
              color: Colors.black.withOpacity(0.1),
              blurRadius: 4,
              spreadRadius: 1)
        ],
        //테두리
        border: selected ? Border.all(color: Colors.black, width: 2) : null,
      ),
    );
  }
}
