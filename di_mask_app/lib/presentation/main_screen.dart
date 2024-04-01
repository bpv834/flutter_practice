import 'package:di_mask_app/presentation/components/store_item.dart';
import 'package:di_mask_app/presentation/main_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<MainViewModel>();
    final state = viewModel.state;
    return Scaffold(
      appBar: AppBar(
        title: Text('마스크 재고 있는 곳 : ${state.stores.length}곳'),
      ),
      body: state.isLoading == true
          ? const Center(child: CircularProgressIndicator())
          : ListView(
              children: state.stores.map((e) => StoreItem(store: e)).toList(),
            ),
    );
  }
}
