import 'package:flutter/material.dart';

class MobileDesktop extends StatelessWidget {
  const MobileDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('desktop'),
        backgroundColor: Colors.deepPurple[100],
      ),
      body: Row(
        children: [
          Expanded(
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.all(16),
                child: Container(
                  height: 300,
                  color: Colors.deepPurple[400],
                ),
              ),
              Expanded(
                child: ListView.builder(
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          color: Colors.deepPurple[300],
                          height: 120,
                        ),
                      );
                    }),
              )
            ]),
          ),
          //side panel
          Container(
            width: 300,
            child: Expanded(
              child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        color: Colors.deepPurple[300],
                        height: 120,
                      ),
                    );
                  }),
            )
          )
        ],
      ),
    );
  }
}
