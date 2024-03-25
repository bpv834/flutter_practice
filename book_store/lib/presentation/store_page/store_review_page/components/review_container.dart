import 'package:book_store/core/customer_info_view_model.dart';
import 'package:book_store/domain/model/review_response_info.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ReviewContainer extends StatelessWidget {
  const ReviewContainer({super.key, required this.reviewResponseInfo});

  final ReviewResponseInfo reviewResponseInfo;

  @override
  Widget build(BuildContext context) {
    final customerInfoViewModel = context.read<CustomerInfoViewModel>();
    return Container(
      constraints: BoxConstraints(minHeight: customerInfoViewModel.screenHeight / 3),
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            const Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      backgroundImage:
                          NetworkImage('${reviewResponseInfo.profileImage}'),
                    ),
                    Text('${reviewResponseInfo.nickName}'),
                  ],
                ),
                Text('${reviewResponseInfo.modifiedDate}  '),
              ],
            ),
            reviewResponseInfo.image == ''
                ? SizedBox()
                : SizedBox(
                    height: customerInfoViewModel.screenHeight / 3.3,
                    child: Image.network(
                      '${reviewResponseInfo.image}',
                      fit: BoxFit.cover,
                    ),
                  ),
            Padding(
              padding: EdgeInsets.all(8),
              child: Expanded(
                child: Row(
                  children: [
                    Text(
                      reviewResponseInfo.reviewContent,
                      maxLines: null,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
