import 'package:book_store/domain/model/reply_info.dart';
import 'package:book_store/domain/model/user_info.dart';
import 'package:book_store/presentation/board_page/board_detail_page/board_detail_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ReplyTile extends StatefulWidget {
  const ReplyTile({Key? key, required this.replyInfo, required this.replyWriterId}) : super(key: key);

  final ReplyInfo replyInfo;
  final int replyWriterId;

  @override
  _ReplyTileState createState() => _ReplyTileState();
}

class _ReplyTileState extends State<ReplyTile> {
  late Future<UserInfo?> _userInfoFuture;

  @override
  void initState() {
    super.initState();
    _userInfoFuture = context.read<BoardDetailViewModel>().getUser(widget.replyWriterId);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<UserInfo?>(
      future: _userInfoFuture,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const CircularProgressIndicator(); // or any other loading indicator
        } else if (snapshot.hasError) {
          return Text('Error: ${snapshot.error}');
        } else {
          final replyWriter = snapshot.data;
          if (replyWriter == null) {
            return Text('User information not found.');
          }
          return _buildReplyTile(replyWriter);
        }
      },
    );
  }

  Widget _buildReplyTile(UserInfo replyWriter) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: Colors.black,
        ),
      ),
      padding: const EdgeInsets.all(8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 댓글 작성자 프로필 이미지
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(replyWriter.profileImage ?? ''),
              ),
            ),
          ),
          SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // 댓글 작성자 닉네임
                Text(
                  replyWriter.nickname ?? '',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                SizedBox(height: 4),
                // 댓글 작성 시간
                Text(
                  widget.replyInfo.createdDate.toString(),
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 12,
                  ),
                ),
                SizedBox(height: 8),
                // 댓글 내용
                Text(
                  widget.replyInfo.replyContent,
                  style: TextStyle(fontSize: 14),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
