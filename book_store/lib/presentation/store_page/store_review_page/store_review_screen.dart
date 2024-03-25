import 'package:book_store/presentation/store_page/store_review_page/components/review_container.dart';
import 'package:book_store/presentation/store_page/store_review_page/store_review_view_model.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import '../../../core/customer_info_view_model.dart';
import '../store_review_write_page/store_review_write_screen.dart';

class StoreReviewScreen extends StatefulWidget {
  const StoreReviewScreen(
      {super.key, required this.boardId, required this.storeName});

  final int boardId;
  final String storeName;

  @override
  State<StoreReviewScreen> createState() => _StoreReviewScreenState();
}

class _StoreReviewScreenState extends State<StoreReviewScreen> {
  String getFormattedDateAndTime() {
    DateTime now = DateTime.now();
    return DateFormat('yy.MM.dd HH:mm').format(now);
  }

  Future<void> _init(BuildContext context) async {
    final viewModel = context.read<StoreReviewViewModel>();
    viewModel.getReviewList(widget.boardId);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _init(context);
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<StoreReviewViewModel>();
    final state = viewModel.state;
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) =>
                      StoreReviewWriteScreen(storeId: widget.boardId)),
            );
          }, icon: const Icon(Icons.edit))
        ],
        centerTitle: true,
        title: Text(widget.storeName),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(2),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Text('리뷰 수: '),
                Text('${state.reviewList.length}'),
              ],
            ),
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return ReviewContainer(
                      reviewResponseInfo: state.reviewList[index]);
                },
                itemCount: state.reviewList.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
