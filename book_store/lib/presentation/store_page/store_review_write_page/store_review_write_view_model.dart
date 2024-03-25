import 'dart:convert';

import 'package:book_store/data/data_source/post_api/save_store_review.dart';
import 'package:book_store/domain/model/review_request_info.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';

import '../../../core/customer_info_view_model.dart';
import '../../../data/data_source/post_api/shot_image.dart';

class StoreReviewWriteViewModel with ChangeNotifier{
  XFile? _image ;
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

  XFile get image => _image??XFile('');

  setImage(XFile value) {
    _image = value;
    notifyListeners();
  }
  Future<void> saveReview(BuildContext context, String content, String imageUrl, int bookStoreId)async{
  print('saveReview 실행');
  final customerInfoViewModel = context.read<CustomerInfoViewModel>();
    ShotImage shotImage = ShotImage();
    SaveStoreReview saveStoreReview = SaveStoreReview();
    if(_image?.path==''){
      print('이미지가 널인 경우');
  ReviewRequestInfo requestInfo  = ReviewRequestInfo(content: content, image: '', userId: customerInfoViewModel.token, bookStoreId: bookStoreId);
      await saveStoreReview.postReview(requestInfo);
      notifyListeners();
    }else{
      print('이미지가 널이 아닌 경우');
      String imageUrl;
      Map<String, dynamic>? data = await shotImage.postImage(_image!);
      print('data: $data');
      String data0 = data!['image'];
      // JSON 디코드
      Map<String, dynamic> decodedData = jsonDecode(data0);
      imageUrl = decodedData['data'];
      imageUrl = jsonDecode(imageUrl);
      ReviewRequestInfo requestInfo = ReviewRequestInfo(content: content, image: imageUrl, userId: customerInfoViewModel.token, bookStoreId: bookStoreId);
      await saveStoreReview.postReview(requestInfo);
      notifyListeners();
    }
  }
}