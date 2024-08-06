import 'package:bhgh/core/router/router.dart';
import 'package:bhgh/presentation/components/habit_tile.dart';
import 'package:bhgh/presentation/home_page/home_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<HomeViewModel>();
    final state = viewModel.state;
    return Scaffold(
      appBar: AppBar(
        title: const Text('성공'),
      ),
      body: state.isLoading
          ? ListView.builder(
              itemCount: state.tiles.length,
              itemBuilder: (BuildContext context, int idx) {
                return HabitTile(
                  name: state.tiles[idx].name,
                  age: state.tiles[idx].age,
                  gender: state.tiles[idx].gender,
                  mainHabit: state.tiles[idx].mainHabit,
                  likes: state.tiles[idx].likeCount,
                  tileId: state.tiles[idx].tileId,
                );
              })
          : const Center(child: CircularProgressIndicator()),
    );
  }
}
