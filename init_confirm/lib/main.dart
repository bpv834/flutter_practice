import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    print('build is called');
    return const MaterialApp(
      home: ScreenA(),
    );
  }
}

class ScreenA extends StatefulWidget {
  const ScreenA({Key? key}) : super(key: key);

  @override
  State<ScreenA> createState() => _ScreenAState();
}

class _ScreenAState extends State<ScreenA> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ScreenA'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context)=> ScreenB()),
                );
              },
              child: const Text(
                'Go to Screen B',
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.orangeAccent,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Center(
            child: ElevatedButton(
              child: const Text('Go to Screen C'),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}

class ScreenB extends StatefulWidget {

  const ScreenB({Key? key}): super(key: key);

  @override
  State<ScreenB> createState() => _ScreenBState();
}

class _ScreenBState extends State<ScreenB> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print('initState is called');
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    print('dispose is called');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen B')
      ),
      body: Center(
        child: RaisedButton(
          onPressed: (){
            Navigator.pop(context);
          },
          child: Text('Go to Screen C'),
        ),
      ),
    );
  }
}

class ScreenC extends StatelessWidget {
  const ScreenC({Key? key}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}


