/*
import 'package:flutter/material.dart';

class NearByStoresList extends StatelessWidget {
  const NearByStoresList({super.key});

  @override
  Widget build(BuildContext context) {
    return homeViewModel.isLoading
        ? CircularProgressIndicator()
        : Container(
      height: 500,
      child: ListView.builder(
          itemCount: nearStore.length,
          itemBuilder: (context, index) {
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircleAvatar(
                  */
/* backgroundImage:
                            NetworkImage(customViewModel.profileImageUrl),*//*

                ),
                SizedBox(width: 5),
                Text(
                  '${nearStore[index].name}',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text('${nearStore[index].dist}')
              ],
            );
          }),
    );
  }
}
*/
