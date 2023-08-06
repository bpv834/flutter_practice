import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class AddImage extends StatefulWidget {
  const AddImage({super.key});

  @override
  State<AddImage> createState() => _AddImageState();
}

class _AddImageState extends State<AddImage> {

  //저장한 사진 다시보기 위함
  File? pickedImage;
  void _pickImage() async {
    final imagePicker = ImagePicker();
    //pickImage 메서드가 Future 반환 xFile경로에 사진 임시 저장
    final pickedImageFile = await imagePicker.pickImage(
      source: ImageSource.camera,
      imageQuality: 50,//중간화질
      maxHeight: 150//최대높이
    );
    setState(() {
      if(pickedImageFile != null) {
        pickedImage = File(pickedImageFile!.path);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 20),
      width: 200,
      height: 400,
      child: Column(
        children: [
          CircleAvatar(
            radius: 40,
            backgroundColor: Colors.blue,
            backgroundImage: pickedImage!=null? FileImage(pickedImage!): null,
          ),
          SizedBox(
            height: 10,
          ),
          OutlinedButton.icon(
            onPressed: () {
              _pickImage();
            },
            icon: Icon(
              Icons.image,
            ),
            label: Text('Add icon'),
          ),
          SizedBox(
            height: 200,
          ),
          TextButton.icon(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.close),
            label: Text('Close'),
          )
        ],
      ),
    );
  }
}
