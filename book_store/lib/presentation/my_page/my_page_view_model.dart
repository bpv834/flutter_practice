import 'dart:convert';

import 'package:book_store/domain/model/board_info.dart';
import 'package:book_store/domain/model/simple_store.dart';
import 'package:book_store/domain/model/user_info.dart';
import 'package:book_store/domain/repository/board_repository.dart';
import 'package:book_store/presentation/board_page/my_board_page/my_board_view_model.dart';
import 'package:book_store/presentation/my_page/my_page_ui_event.dart';
import 'package:book_store/presentation/store_page/store_view_page/store_view_model.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:kakao_flutter_sdk_user/kakao_flutter_sdk_user.dart';
import 'package:provider/provider.dart';

import '../../core/customer_info_view_model.dart';
import '../../data/data_source/post_api/save_user.dart';
import '../../data/data_source/post_api/shot_image.dart';
import '../../domain/repository/store_repository.dart';
import '../board_page/my_board_page/my_board_screen.dart';
import '../login_page/login_platform.dart';
import '../store_page/store_view_page/store_screen.dart';

class MyPageViewModel with ChangeNotifier {
  XFile? _image;

  final BoardRepository boardRepository;
  final StoreRepository storeRepository;

  final ImagePicker picker = ImagePicker();

  MyPageViewModel({required this.boardRepository, required this.storeRepository});


  void onEvent({
    required MyPageUiEvent event,
    required BuildContext context,
  }) {
    event.when(
      changeImage: (image) => getImage(image,context),
      changeNickName: (newNickName) => changeNickname(context, newNickName),
      clickBookmark: (String barTagName, String regionTagName) =>
          clickBookmark(context, barTagName, regionTagName),
      clickMyBoard: (String barName) => clickMyBoard(context, barName),
      clickMyInteresting: (String barName) =>
          clickMyInteresting(context, barName),
      logOut: () => signOut(context),
    );
  }

  void clickBookmark(
      BuildContext context, String barTagName, String regionTagName) async{
    final storeViewModel = context.read<StoreViewModel>();
    storeViewModel.barTagName = barTagName;
    storeViewModel.regionTagName = regionTagName;
    List<SimpleStore> bookMarkStores = await storeRepository.getBookMarkList(context.read<CustomerInfoViewModel>().token);
    storeViewModel.isLoading=true;
    notifyListeners();
    storeViewModel.stores=bookMarkStores;
    storeViewModel.isLoading=false;
    notifyListeners();

    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => StoreViewScreen(simpleStores: bookMarkStores,

              )),
    );
  }

  void clickMyBoard(BuildContext context, String barName) async{
    final myBoardViewModel = context.read<MyBoardViewModel>();
    var state = myBoardViewModel.state;
    var newState = state.copyWith(boardList:[], isLoading: true);
    final customerInfoViewModel = context.read<CustomerInfoViewModel>();
    myBoardViewModel.setState(newState);
    List<BoardInfo> boardList = await boardRepository.getBoardList(customerInfoViewModel.token);
    List<BoardInfo> myBoardList =boardList.where((board) => board.userId == customerInfoViewModel.token).toList();
    newState = state.copyWith(barName: barName,boardList:myBoardList, isLoading: false);
    myBoardViewModel.setState(newState);
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) =>  const MyBoardScreen()),
    );
  }



  Future<void> clickMyInteresting(BuildContext context, String barName) async {
    final myBoardViewModel = context.read<MyBoardViewModel>();
    final customerInfoViewModel = context.read<CustomerInfoViewModel>();
    var state = myBoardViewModel.state;
    var newState = state.copyWith(boardList:[], isLoading: true);
    myBoardViewModel.setState(newState);
    List<BoardInfo> interestBoardList = await boardRepository.getInterestBoardList(customerInfoViewModel.token);
    print('interestBoardList: $interestBoardList');
    newState = state.copyWith(barName: barName ,boardList:interestBoardList, isLoading: false);
    myBoardViewModel.setState(newState);
    print('상태변경완료');
    notifyListeners();
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) =>  const MyBoardScreen()),
    );
  }

  //이미지를 가져오는 함수
  Future getImage(ImageSource imageSource, BuildContext context) async {
    final customerInfoViewModel = context.read<CustomerInfoViewModel>();
    //pickedFile에 ImagePicker로 가져온 이미지가 담긴다.
    final XFile? pickedFile = await picker.pickImage(source: imageSource);
    String? imageUrl;
    if (pickedFile != null) {
      _image = XFile(pickedFile.path);
      ShotImage shotImage = ShotImage();
      SaveUser saveUser = SaveUser();
      Map<String, dynamic>? data = await shotImage.postImage(_image!);
      String data0 = data!['image'];
      // JSON 디코드
      Map<String, dynamic> decodedData = jsonDecode(data0);
      imageUrl = decodedData['data'];
      imageUrl = jsonDecode(imageUrl!);
      customerInfoViewModel.setProfileImageUrl(imageUrl);
      notifyListeners();
      UserInfo newUser = UserInfo(
          id: customerInfoViewModel.token,
          nickname: customerInfoViewModel.nickname,
          age: customerInfoViewModel.age,
          category: customerInfoViewModel.category,
          profileImage: imageUrl);
      saveUser.postUser(newUser);
      notifyListeners(); // 이미지가 변경되었음을 알림
    } else {
      print('사진이 비었음');
    }
  }

  //이미지를 가져오는 함수
  Future changeNickname(BuildContext context, String newNick) async {
    final customerInfoViewModel = context.read<CustomerInfoViewModel>();
    customerInfoViewModel.setNickName(newNick);
    notifyListeners();
    SaveUser saveUser = SaveUser();
    UserInfo newUser = UserInfo(
        id: customerInfoViewModel.token,
        nickname: customerInfoViewModel.nickname,
        age: customerInfoViewModel.age,
        category: customerInfoViewModel.category,
        profileImage: customerInfoViewModel.profileImageUrl);
    saveUser.postUser(newUser);
    notifyListeners(); // 이미지가 변경되었음을 알림
  }

  void signOut(BuildContext context) async {
    final customerInfoViewModel = context.read<CustomerInfoViewModel>();
    switch (customerInfoViewModel.loginPlatform) {
      case LoginPlatform.google:
        break;
      case LoginPlatform.kakao:
        await UserApi.instance.logout();
        break;
      case LoginPlatform.naver:
        break;
      case LoginPlatform.none:
        break;
    }
    customerInfoViewModel.setPlatform(LoginPlatform.none);
  }

  XFile get image => _image!;
}
