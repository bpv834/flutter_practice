import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:instagram_clone/create/create_model.dart';

class CreatePage extends StatefulWidget {
  const CreatePage({super.key});

  @override
  State<CreatePage> createState() => _CreatePageState();
}

class _CreatePageState extends State<CreatePage> {
  final model = CreateModel();
  ImagePicker? _imagePicker;
  File? _image;
  final _txtcontroller = TextEditingController();
  bool isLoading = false;

  @override
  void dispose() {
    _txtcontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('새 게시물'),
        actions: [
          IconButton(
            icon: Icon(
              Icons.send,
            ),
            onPressed: () async {
              if (_image != null && _txtcontroller.text.isNotEmpty) {
                setState(() {
                  isLoading=true;
                });
                await model.uploadPost(_txtcontroller.text, _image!);
                //비동기 일처리가 끝났다면,
                setState(() {
                  isLoading=false;
                });
                if(mounted){
                  Navigator.pop(context);
                }
              }
            },
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  filled: true,
                  hintStyle: TextStyle(color: Colors.grey[600]),
                  hintText: 'Type in your text',
                  fillColor: Colors.white70,
                ),
                controller: _txtcontroller,
              ),
              SizedBox(height: 20),
              if(isLoading) CircularProgressIndicator(),
              ElevatedButton(
                onPressed: () async {
                  _image = await model.getImage();
                  setState(() {});
                },
                child: Text('이미지 선택'),
              ),
              if (_image != null)
                Image.file(
                  _image!,
                ),
            ],
          ),
        ),
      ),
    );
  }
}
