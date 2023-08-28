import 'package:flutter/material.dart';

import 'account_model.dart';

class AccountPage extends StatelessWidget {
  AccountPage({super.key});
  final model = AccountModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AccountPage'),
        actions: [
          IconButton(
            onPressed: () {
              model.logout();
            },
            icon: Icon(Icons.exit_to_app),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Stack(children: [
                  SizedBox(
                    width: 80,
                    height: 80,
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                        model.getProfileImageUrl(),
                      ),
                    ),
                  ),
                  Container(
                    height: 70,
                    width: 70,
                    alignment: Alignment.bottomRight,
                    child: SizedBox(
                      height: 30,
                      width: 30,
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.add_a_photo),
                      ),
                    ),
                  )
                ]),
                Text(
                  model.getNickName(),
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
            Column(
              children: [
                Text(
                  '1',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                Text(
                  '게시물',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Text(
                  '0',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                Text(
                  '팔로우',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Text(
                  '0',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                Text(
                  '팔로잉',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
