import 'package:flutter/material.dart';
import 'dart:math';

class Dice extends StatefulWidget {
  @override
  State<Dice> createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  @override
  int ldice=1, rdice=1;
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.redAccent,
        appBar: AppBar(
            title: Text(
          'Dice Game',
        )),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(32.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      flex: 2,
                      child: Image.asset('image/dice$ldice.png'),
                    ),
                    Expanded(
                      flex: 1,
                      child: Image.asset('image/dice$rdice.png'),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 60,
              ),
              ButtonTheme(
                minWidth: 100,
                height: 60,
                child: RaisedButton(
                  child: Icon(
                    Icons.play_arrow,
                    color: Colors.white,
                    size: 50,
                  ),
                  onPressed: () {
                    setState(() {
                      ldice=Random().nextInt(6) +1;
                      rdice=Random().nextInt(6) +1;
                    });
                  },
                  color: Colors.orangeAccent,
                ),
              )
            ],
          ),
        ));
  }
}
