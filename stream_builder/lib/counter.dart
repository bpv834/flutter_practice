import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  final int price = 2000;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Stream builder',
        ),
      ),
      //자체적으로 스트림을 통해 지속적으로 들어오는 데이터들을 구독하기 위한 기능
      body: StreamBuilder<int>(
        initialData: price,
        //새로운 데이터가 들어올 때마다 snapshot에 저장하고 builder메서드를 통해서 매번 새로운 데이터로 화면에 출력할 수 있음
        stream: addStreamValue(),
        builder: (context, snapshot) {
          final priceNumber = snapshot.data.toString();
          return Center(
            child: Text(
              priceNumber,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 40,
                color: Colors.blue,
              ),
            ),
          );
        },
      ),
    );
  }

  Stream<int> addStreamValue() {
    return Stream<int>.periodic(Duration(seconds: 1), (count) => price + count);
  }
}
