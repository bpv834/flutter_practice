import 'dart:html';
import 'package:flutter/material.dart';
import 'package:json_app/service.dart';
import 'package:json_app/user.dart';

class JsonParse extends StatefulWidget {
  const JsonParse({super.key});

  @override
  State<JsonParse> createState() => _JsonParseState();
}

class _JsonParseState extends State<JsonParse> {
  List<User> _user = <User>[];
  bool loading = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //then 구문은 Future의 결과를 처리하고 연속적인 작업을 정의하는데 사용됩니다.
    //then 구문은 getInfo()의 결과가 준비되면 실행되며, 비동기 작업의 결과를 value 매개변수로 받아와서 처리합니다.
    Services.getInfo().then((value) {
      setState(() {
        _user = value;
        loading = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text(loading ? 'User' : 'Loading...'),
        leading: IconButton(
          icon: Icon(Icons.account_box),
          onPressed: () {},
        ),
      ),
      body: ListView.builder(
        itemCount: _user.length,
        itemBuilder: (context, index) {
          User user = _user[index];
          return ListTile(
            leading: const Icon(
              Icons.account_circle_rounded,
              color: Colors.blue,
            ),
            trailing: IconButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text(
                        user.name,
                      ),
                      content: Column(
                        //컬럼특성상 전체 사이즈를 가져가려 함 그래서 min사이즈로 축소함
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(user.phone),
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Text('Close'),
                          )
                        ],
                      ),
                    );
                  },
                );
              },
              icon: const Icon(Icons.phone_android_outlined),
              color: Colors.red,
            ),
            title: Text(user.name),
            subtitle: Text(user.email),
          );
        },
      ),
    );
  }
}
