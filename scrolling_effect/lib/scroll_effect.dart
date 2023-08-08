import 'package:flutter/material.dart';
import 'package:scrolling_effect/image_widget.dart';

class ScrollEffect extends StatelessWidget {
  const ScrollEffect({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //더 복잡하고 다양한 스크롤 레이아웃을 구현하기 위해 사용됩니다.
      body: CustomScrollView(
        //일반위젯은 올 수 없고, 슬리버 관련 위젯만 리스트에 담길 수 있음
        slivers: [
          SliverAppBar(
            title: Text('Sliver appbar'),
            backgroundColor: Colors.blueGrey,
            expandedHeight: 400,
            leading: Icon(Icons.arrow_back),
            actions: [
              Icon(Icons.settings),
              SizedBox(
                width: 12,
              )
            ],
            //확장됐을때 설정된 expandedheight만큼 늘어났다가, 줄어들었을때 타이틀 간소화기능
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                'assets/fruit.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          //SliverGrid: 주로 복잡한 스크롤 레이아웃을 구현할 때, 다른 Sliver 위젯과 함께 사용하며, CustomScrollView 내에서 사용됩니다.
          SliverGrid(
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return ImageWidget(index: 20);
              },
              childCount: 10, // 원하는 아이템 수에 맞게 변경
            ),
          ),
          //일반위젯이 필요할 경우 사용할 수 있도록 하는 위젯
          SliverToBoxAdapter(
            child: Column(
              children: [
                Text('dta'),
                Text('data'),
                Text('data'),
              ],
            ),
          )
        ],
      ),
    );
  }
}
