import 'dart:async';

import 'package:flutter/material.dart';
import 'package:note_app/presentation/add_edit_note/add_edit_note_event.dart';
import 'package:note_app/presentation/add_edit_note/add_edit_note_view_model.dart';
import 'package:note_app/ui/colors.dart';
import 'package:provider/provider.dart';

import '../../domain/model/note.dart';

class AddEditNoteScreen extends StatefulWidget {
  final Note? note;

  //새로 메모를 만들어 안들어올수도(노트 수정하는 경우) 있으니 required X
  AddEditNoteScreen({super.key, this.note});

  @override
  State<AddEditNoteScreen> createState() => _AddEditNoteScreenState();
}

class _AddEditNoteScreenState extends State<AddEditNoteScreen> {
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _contentController = TextEditingController();
  StreamSubscription? _streamSubscription;
  final List<Color> noteColors = [
    roseBud,
    primrose,
    wisteria,
    skyBlue,
    illusion,
  ];

  @override
  void initState() {
    if (widget.note != null) {
      _titleController.text = widget.note!.title;
      _contentController.text = widget.note!.content;
    }
    super.initState();
    //init 내에서 view모델을 바로 사용 불가 따라서microtast 사용
    Future.microtask(() {
      //반드시 context.read로 호출해야 함
      final viewModel = context.read<AddEditNoteViewModel>();

      //화면이 사라져도 리슨을 계속 하고있는 상태이기 때문에 subscription으로 관리해야함
      //화면을 닫을때 scription을 cancle해줘야 함
      _streamSubscription = viewModel.eventStream.listen((event) {
        event.when(
            saveNote: () {
              //뒤로가기로 pop이 된건지, 메모를 작성하고 난 후 화면을 리로드한건지 구분 하기 위해 true 넘겨줌
              //true 어디에 넘겨주는것인가?
              //팝된 화면에 true를 넘겨주는것인가?
              Navigator.pop(context, true);
            },
            showSnackBar: (String message) {
              final snackBar = SnackBar(content: Text(message));
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            });
      });
    });
  }

  @override
  void dispose() {
    //화면을 닫을 때 stream을 닫아줘 리슨상태를 멈춘다.
    _streamSubscription?.cancel();
    _contentController.dispose();
    _titleController.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<AddEditNoteViewModel>();
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          viewModel.onEvent(AddEditNoteEvent.saveNote(
              widget.note == null ? null : widget.note!.id,
              _titleController.text,
              _contentController.text));
        },
        child: Icon(Icons.save),
      ),
      body: AnimatedContainer(
        padding: EdgeInsets.only(left: 16, right: 16, bottom: 16, top: 40),
        color: Color(viewModel.color),
        duration: Duration(milliseconds: 500),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: noteColors
                  .map(
                    (color) => InkWell(
                      //Inkwell == GestureDetector
                      //_buildBackgroundColor는 동그란 컨테이너 한개 리턴 색을 map(color)이고, 테두리를 조건부로 만들어줌
                      child: _buildBackgroundColor(
                          color: color,
                          selected: viewModel.color == color.value),
                      onTap: () {
                        //InkWell의 onTap
                        viewModel
                            .onEvent(AddEditNoteEvent.changeColor(color.value));
                      },
                    ),
                  )
                  .toList(),
            ),
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
