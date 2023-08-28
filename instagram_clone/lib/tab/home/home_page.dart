import 'package:flutter/material.dart';
import 'package:instagram_clone/tab/home/home_model.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final model = HomeModel();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Instagram Clone'),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 20),
            Text(
              'Instagram 에 오신 것을 환영 합니다.',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20),
            Text('사진과 동영상을 보려면 팔로우 하세요'),
            Expanded(
              child: Card(
                //카드 그림자
                elevation: 4.0,
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    children: [
                      SizedBox(height: 15),
                      SizedBox(
                        width: 50,
                        height: 50,
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(
                              model.getProfileImageUrl()),
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        model.getEmail(),
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(model.getNickName()),
                      SizedBox(height: 20),
                      Row(
                        children: [
                          Image.network('https://lh5.googleusercontent.com/p/AF1QipPGl6MqUOpA-oR3QcdGBgaWh67smtnDY1s05ps4=w260-h175-n-k-no',width : 125,fit: BoxFit.cover),
                          Image.network('https://lh5.googleusercontent.com/p/AF1QipPGl6MqUOpA-oR3QcdGBgaWh67smtnDY1s05ps4=w260-h175-n-k-no',width : 125,fit: BoxFit.cover),
                          Image.network('https://lh5.googleusercontent.com/p/AF1QipPGl6MqUOpA-oR3QcdGBgaWh67smtnDY1s05ps4=w260-h175-n-k-no',width : 125,fit: BoxFit.cover),
                        ],
                      ),
                      SizedBox(height: 20),
                      Text('facebook 친구'),
                      SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text('팔로우'),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
