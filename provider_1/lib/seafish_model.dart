import 'package:flutter/cupertino.dart';

class SeaFishModel with ChangeNotifier  {
  final String name;
  int tunaNumber;
  final String size;

  SeaFishModel({required this.name, required this.tunaNumber, required this.size});

  void ChangeSeaFishNumber(){
    tunaNumber++;
    notifyListeners();
  }
}