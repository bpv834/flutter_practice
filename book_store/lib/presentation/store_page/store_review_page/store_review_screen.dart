import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import '../../../core/customer_info_view_model.dart';
import '../store_review_write_page/store_review_write_screen.dart';

class StoreReviewScreen extends StatelessWidget {
  const StoreReviewScreen({super.key});

  String getFormattedDateAndTime() {
    DateTime now = DateTime.now();
    return DateFormat('yy.MM.dd HH:mm').format(now);
  }

  @override
  Widget build(BuildContext context) {
    final customerInfoViewModel = context.read<CustomerInfoViewModel>();
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('서점이름'),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(15),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [Text('리뷰 수: '), Text('4')],
              ),
              Container(
                height: customerInfoViewModel.screenHeight / 2,
                color: Colors.grey,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text('닉네임  '),
                        Text('${getFormattedDateAndTime()}')
                      ],
                    ),
                    Container(
                      height: customerInfoViewModel.screenHeight / 3,
                      child: Image.network(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRSPcgLtqK6u3zCsdT340ODI-xqAfjJOFamb0KifxokXw&s'),
                    ),
                    Container(
                      child: Padding(
                        padding: EdgeInsets.all(8),
                        child: Row(
                          children: [
                            Text('이집 분위기 좋아요'),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => StoreReviewWriteScreen()),
        );},
        tooltip: 'Increment',
        child: Icon(Icons.add), // Use the Icons.add for the plus icon
      ),
    );
  }
}
