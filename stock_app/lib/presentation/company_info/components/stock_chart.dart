import 'dart:math';

import 'package:flutter/material.dart';

import '../../../domain/model/intra_day_info.dart';

class StockChart extends StatelessWidget {
  final List<IntraDayInfo>? infos;

  const StockChart({
    super.key,
    this.infos = const [],
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height:400   ,
      color: Colors.red,
      child: CustomPaint(
        painter: ChartPainter(infos!),
      ),
    );
  }
}

class ChartPainter extends CustomPainter{
  //날짜별로 한 기업의 주가가 날짜와 종가로 정리돼 있어 리스트임
  final List<IntraDayInfo> infos;

  //늦은 초기화
  //날짜별로 e탐색을 함
  late int upperValue=infos.map((e) => e.close)
  //(previousValue, element) => max(previousValue,element) 인데 input이 같아 max로 축약함 가능
      .fold<double>(0.0, max).ceil();
  
  late int lowerValue=
  //reduce(value, element) => min(value, element))
  //하나씩 더해서 더한값이 벨류가 되는 logic
  //toInt()로 소수점 버림
  infos.map((e) => e.close).reduce(min).toInt();
  ChartPainter(this.infos);

  @override
  void paint(Canvas canvas, Size size) {
    //캔버스에 그리는 코드를 작성한다
    final priceStep = (upperValue-lowerValue)/5.0;
    for(var i=0;i<5;i++){

    }

  }

  @override
  bool shouldRepaint(ChartPainter oldDelegate) {
    //언제 캔버스를 갱신할 지의 프로토콜 지정
    return oldDelegate.infos !=infos;
  }
}