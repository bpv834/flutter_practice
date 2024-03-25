import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:image_picker/image_picker.dart';

part 'my_page_ui_event.freezed.dart';

@freezed
sealed class MyPageUiEvent<T> with _$MyPageUiEvent<T> {
  const factory MyPageUiEvent.changeImage(ImageSource imageSource) = ChangeImage;
  const factory MyPageUiEvent.changeNickName(String newName) = ChangeNickName;
  const factory MyPageUiEvent.clickBookmark(String barTagName, String regionTagName) = ClickBookmark;
  const factory MyPageUiEvent.clickMyBoard(String barName) = ClickMyBoard;
  const factory MyPageUiEvent.clickMyInteresting(String barName) = ClickMyInteresting;
  const factory MyPageUiEvent.logOut() = LogOut;




}