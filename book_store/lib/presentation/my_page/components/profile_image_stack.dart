import 'package:book_store/core/customer_info_view_model.dart';
import 'package:book_store/presentation/my_page/my_page_ui_event.dart';
import 'package:book_store/presentation/my_page/my_page_view_model.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';

class ProfileImageStack extends StatelessWidget {
  const ProfileImageStack({super.key});

  @override
  Widget build(BuildContext context) {
    final customerInfoViewModel = context.read<CustomerInfoViewModel>();
    final viewModel =context.watch<MyPageViewModel>();
    return  Stack(
      children: [
        SizedBox(
          width: customerInfoViewModel.screenWidth / 5,
          // 정사각형의 가로 길이
          height: customerInfoViewModel.screenHeight / 10,
          // 정사각형의 세로 길이
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: CachedNetworkImage(
              imageUrl: customerInfoViewModel.profileImageUrl,
              //이미지가 로드되기 전에 표시할 위젯입니다. 이 예시에서는 로딩 중을 나타내기 위해 원형의 진행 표시줄을 사용합니다.
              placeholder: (context, url) =>
              const CircularProgressIndicator(),
              errorWidget: (context, url, error) =>
              const Icon(Icons.error),
              fit: BoxFit.cover, // Adjust the fit as needed
            ),
          ),
        ),
        Positioned(
          bottom: -13,
          right: -15,
          child: IconButton(
            onPressed: () {
              viewModel.onEvent(event: const MyPageUiEvent.changeImage(ImageSource.gallery), context: context);
            },
            icon: const Icon(Icons.add_a_photo),
          ),
        )
      ],
    );
  }
}
