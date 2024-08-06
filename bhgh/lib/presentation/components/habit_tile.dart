import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HabitTile extends StatefulWidget {
  final String tileId;
  final String name;
  final int age;
  final String gender;
  final String mainHabit;
  final int likes;

  const HabitTile({
    super.key,
    required this.tileId,
    required this.name,
    required this.age,
    required this.gender,
    required this.mainHabit,
    required this.likes,
  });

  @override
  State<HabitTile> createState() => _HabitTileState();
}

class _HabitTileState extends State<HabitTile> {
  bool _isLiked = false;
  int _likeCount = 0;
  String? _userId;

  @override
  void initState() {
    super.initState();
    _likeCount = widget.likes;
    //tile에 좋아요가 됐는지 알기위해 userId가 필요함
    _userId = FirebaseAuth.instance.currentUser!.email; // 이메일로 사용자 ID 설정
    _checkIfLiked();
  }

  Future<void> _toggleLike() async {
    //likes 컬렉션에 _userId + tileId 를 Id로 문서를 만들것
    final likeRef = FirebaseFirestore.instance.collection('likes').doc('${_userId}_${widget.tileId}');
    //내가 좋아요 버튼을 누르는 타일 DB 문서에 접근해서 likeCount를 조절
    final postRef = FirebaseFirestore.instance.collection('tiles').doc(widget.tileId);

    //이미 _checkIfLiked()를 통해 tile 좋아요 상태를 확인한 상태에서 _isLiked 상태값에 따라 조건문 실행
    if (_isLiked) {
      // 좋아요 취소
      await likeRef.delete();
      //likesRef의 likeCount -1
      await postRef.update({'likes': FieldValue.increment(-1)});
      //상태변경
      setState(() {
        _isLiked = false;
        _likeCount -= 1;
      });
    } else {
      // 좋아요 추가
      await likeRef.set({'userId': _userId, 'tileId': widget.tileId});
      //likesRef의 likeCount +1
      await postRef.update({'likes': FieldValue.increment(1)});
      //상태변경
      setState(() {
        _isLiked = true;
        _likeCount += 1;
      });
    }
  }

  Future<void> _checkIfLiked() async {
    //userId 와 tileId 값으로 좋아요가 눌러져있는 상태인지 검사
    final querySnapshot = await FirebaseFirestore.instance
        .collection('likes')
        .where('userId', isEqualTo: _userId)
        .where('tileId', isEqualTo: widget.tileId)
        .get();

    //문서가 있다면 좋아요로 상태변경
    if (querySnapshot.docs.isNotEmpty) {
      setState(() {
        _isLiked = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const Divider(),
      ListTile(
        title: Text('닉네임: ${widget.name}'),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Age: ${widget.age}'),
            Text('Gender: ${widget.gender}'),
            Text('Main BadHabit: ${widget.mainHabit}'),
            Text('Likes: $_likeCount'),
          ],
        ),
        trailing: IconButton(
          icon: Icon(
            _isLiked ? Icons.favorite : Icons.favorite_border,
            color: _isLiked ? Colors.red : Colors.grey,
          ),
          onPressed: _toggleLike,
        ),
        onTap: () {
          // Handle tile tap (e.g., navigate to a detail page)
        },
      ),
    ]);
  }
}
