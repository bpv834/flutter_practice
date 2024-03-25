import 'package:book_store/core/customer_info_view_model.dart';
import 'package:book_store/data/data_source/put_api/modify_board.dart';
import 'package:book_store/domain/model/board_request_info.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';

class BoardModifyViewModel with ChangeNotifier {
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

  setImage(XFile value) {
    _image = value;
    notifyListeners();
  }

  Future<void> modifyBoard(BuildContext context,int boardId, String title, String content, String imagePath, int likeCount, int replyCount)async{
    print('modifyBoard');
    print('boardId: $boardId ,title: $title, content: $content, imagePath: $imagePath, likeCount: $likeCount, replyCount: $replyCount ');
    final customerInfoViewModel = context.read<CustomerInfoViewModel>();
    BoardRequestInfo boardRequestInfo = BoardRequestInfo(title: title, content: content, image: imagePath, likeCount: likeCount, replyCount: replyCount, userId: customerInfoViewModel.token);
    ModifyBoard modifyBoard = ModifyBoard();
    await modifyBoard.modifyBoard(boardId, boardRequestInfo);
    notifyListeners();

  }

}
