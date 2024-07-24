import 'package:flutter/material.dart';
import 'package:new_mask/presentation/components/store_item.dart';
import 'package:new_mask/presentation/main_view_model.dart';
import 'package:provider/provider.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<MainViewModel>();
    final state = viewModel.state;
    return Scaffold(
      appBar: AppBar(
        title: Text('마스크 재고 있는 곳: ${state.stores.length}'),
      ),
      body: state.isLoading
          ? Center(
        child: CircularProgressIndicator(),
      )
          : ListView.builder(
          itemCount: state.stores.length,
          itemBuilder: (BuildContext context, int idx) {
          return StoreItem(store: state.stores[idx]);
        }
      ),
    );
  }
}
