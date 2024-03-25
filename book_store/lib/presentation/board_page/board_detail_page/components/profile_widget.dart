import 'package:book_store/core/customer_info_view_model.dart';
import 'package:book_store/presentation/board_page/board_detail_page/components/build_like_button.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../domain/model/board_detail_info.dart';
import '../../../../domain/model/user_info.dart';
import '../board_detail_view_model.dart';

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({super.key,required this.currentBoard, required this.writerImage});

  final BoardDetailInfo currentBoard;
  final String writerImage;



  @override
  Widget build(BuildContext context) {
    final customerInfoViewModel = context.read<CustomerInfoViewModel>();
    return Stack(
      children: [
        Row(
          children: [
            //프사
            Container(
              width: customerInfoViewModel.screenWidth / 3.5,
              height: customerInfoViewModel.screenHeight / 8,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey,
                  width: 1.0,
                ),
                borderRadius: BorderRadius.circular(8.0),
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(writerImage),
                ),
              ),
            ),
            SizedBox(width: 8), // 간격 추가
            //닉, 시간
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  currentBoard.writer!,
                  maxLines: 1,
                  style: TextStyle(
                    fontWeight: FontWeight.w100,
                    fontSize: customerInfoViewModel.screenHeight / 30,
                  ),
                ),
                SizedBox(height: 4), // 간격 추가
                Text(
                  '${currentBoard.createdDate}',
                  style: TextStyle(
                    fontWeight: FontWeight.w100,
                    fontSize: customerInfoViewModel.screenHeight / 30,
                  ),
                ),
              ],
            ),
          ],
        ),
        BuildLikeButton(boardId: currentBoard.boardId!, isLiked: currentBoard.isLike),
      ],
    );
  }
}
