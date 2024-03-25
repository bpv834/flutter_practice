import 'dart:convert';

import 'package:book_store/core/customer_info_view_model.dart';
import 'package:book_store/data/data_source/put_api/modify_board.dart';
import 'package:book_store/domain/model/board_request_info.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';

import '../../../data/data_source/post_api/save_board.dart';
import '../../../data/data_source/post_api/shot_image.dart';

class BoardWriteViewModel with ChangeNotifier {
  XFile? _image;

  final ImagePicker picker = ImagePicker(); //ImagePicker 초기화

  //이미지를 가져오는 함수
  Future getImage(ImageSource imageSource) async {
    //pickedFile에 ImagePicker로 가져온 이미지가 담긴다.

    final XFile? pickedFile = await picker.pickImage(source: imageSource);
    if (pickedFile != null) {
      _image = XFile(pickedFile.path);
      notifyListeners(); // 이미지가 변경되었음을 알림
    } else {
      print('사진이 비었음');
    }
  }

  XFile get image => _image ?? XFile('');

  setImage(XFile? value) {
    _image = value;
    notifyListeners();
  }

  Future<void> saveBoard(
      BuildContext context, String title, String content) async {
    print('saveBoard 실행');
    print('111111_image: $_image');
    final customerInfoViewModel = context.read<CustomerInfoViewModel>();
    ShotImage shotImage = ShotImage();
    SaveBoard saveBoard = SaveBoard();
    if(_image==null){
      print('22222_image: $_image');
      BoardRequestInfo boardRequestInfo = BoardRequestInfo(
          title: title,
          content: content,
          image: '',
          likeCount: 0,
          replyCount: 0,
          userId: customerInfoViewModel.token);
      await saveBoard.saveBoard(boardRequestInfo);
      notifyListeners();
    }else{
      print('3333333_image: $_image');
      String imageUrl;
      Map<String, dynamic>? data = await shotImage.postImage(_image!);
      print('data: $data');
      _image=null;
      notifyListeners();
      String data0 = data!['image'];
      // JSON 디코드
      Map<String, dynamic> decodedData = jsonDecode(data0);
      imageUrl = decodedData['data'];
      imageUrl = jsonDecode(imageUrl);
      BoardRequestInfo boardRequestInfo = BoardRequestInfo(
          title: title,
          content: content,
          image: imageUrl,
          likeCount: 0,
          replyCount: 0,
          userId: customerInfoViewModel.token);
      await saveBoard.saveBoard(boardRequestInfo);
      notifyListeners();
      print('44444444_image: $_image');
    }
  }
}
