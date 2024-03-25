import 'dart:convert';

import 'package:book_store/core/customer_info_view_model.dart';
import 'package:book_store/domain/model/user_info.dart';
import 'package:book_store/presentation/input_inform_page/input_inform_state.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../../data/data_source/post_api/save_user.dart';
import '../../data/data_source/post_api/shot_image.dart';
import '../login_page/login_platform.dart';

class InputInformViewModel with ChangeNotifier {
  XFile? _image;

  final ImagePicker picker = ImagePicker(); //ImagePicker 초기화
  var _state = InputInformState(
    id: null,
    nickName: null,
    age: null,
    category: null,
  );

  List<String> categories = ['소설', '자기계발', '비즈니스', '과학', '역사', '예술', '기타'];
  List<String> selectedCategories = [];
  List<String> ageGroups = [
    '10~19',
    '20~29',
    '30~39',
    '40~49',
    '50~59',
    '60 이상'
  ];

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

  Future<void> register(InputInformState state,
      CustomerInfoViewModel customerInfoViewModel, XFile myImage) async {
    print('myImagePath:${myImage.path}');
    int id = state.id ?? 15; // id가 널이면 빈 문자열로 초기화
    String nickName = state.nickName ?? '호준'; // 닉네임이 널이면 기본값으로 설정
    int age = state.age ?? 25; // 나이가 널이면 기본값으로 설정

    ShotImage shotImage = ShotImage();
    SaveUser saveUser = SaveUser();
    String? imageUrl;
    if (myImage.path.isEmpty) {
      imageUrl =  "https://s3-book.s3.ap-northeast-2.amazonaws.com/%EC%9C%A0%EC%A0%80+%EA%B8%B0%EB%B3%B8.png";
    } else {
      Map<String, dynamic>? data = await shotImage.postImage(myImage);
      print('data: $data');
      String data0= data!['image'];
      // JSON 디코드
      Map<String, dynamic> decodedData = jsonDecode(data0);
      imageUrl=decodedData['data'];
      imageUrl = jsonDecode(imageUrl!);
      print('imageUrl: $imageUrl');

    }
    UserInfo userInfo = UserInfo(
        id: id,
        nickname: nickName,
        age: age,
        category: state.category,
        profileImage: imageUrl);
    await saveUser.postUser(userInfo);
    customerInfoViewModel.setId(id);
    customerInfoViewModel.setPlatform(LoginPlatform.kakao);
    customerInfoViewModel.setNickName(nickName);
    customerInfoViewModel.setAge(age);
    customerInfoViewModel.setCategory(state.category);
    customerInfoViewModel.setProfileImageUrl(userInfo.profileImage);
  }

  void selectCategory(String category) {
    if (selectedCategories.contains(category)) {
      selectedCategories.remove(category);
    } else {
      selectedCategories.add(category);
    }
    notifyListeners();
  }

  get state => _state;

  XFile get image => _image ?? XFile('images/profileImage.png');

  setState(value) {
    _state = value;
    notifyListeners();
  }

  setImage(XFile value) {
    _image = value;
    notifyListeners();
  }
}
