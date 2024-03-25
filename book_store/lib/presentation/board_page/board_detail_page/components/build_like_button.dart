import 'package:book_store/core/customer_info_view_model.dart';
import 'package:book_store/domain/model/board_detail_info.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../domain/model/heart_info.dart';
import '../board_detail_ui_event.dart';
import '../board_detail_view_model.dart';

class BuildLikeButton extends StatefulWidget {
  const BuildLikeButton({super.key,required this.boardId, required this.isLiked});
  final int boardId;
  final bool isLiked;

  @override
  State<BuildLikeButton> createState() => _BuildLikeButtonState();
}

class _BuildLikeButtonState extends State<BuildLikeButton> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.microtask(() {
      final viewModel = context.read<BoardDetailViewModel>();
      viewModel.setIsLiked(widget.isLiked);
    });
  }
  @override
  Widget build(BuildContext context) {
    final customerInfoViewModel =context.read<CustomerInfoViewModel>();
    final viewModel = context.watch<BoardDetailViewModel>();

    return Positioned(
      bottom: 0.0,
      right: 0.0,
      child: InkWell(
        onTap: () {
          HeartInfo myHeart = HeartInfo(
              boardId: widget.boardId,
              userId: customerInfoViewModel.token);
          viewModel.onEvent(
              BoardDetailUiEvent.likeTap(heartInfo: myHeart));
        },
        child: Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 1,
                blurRadius: 3,
                offset: const Offset(0, 1),
              ),
            ],
          ),
          child: viewModel.isLiked
              ? const Icon(
            Icons.favorite,
            color: Colors.red,
            size: 30.0,
          )
              : const Icon(
            Icons.favorite_border,
            color: Colors.red,
            size: 30.0,
          ),
        ),
      ),
    );
  }
}
