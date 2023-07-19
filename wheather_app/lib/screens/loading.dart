import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;
import 'package:wheather_app/data/Network.dart';
import 'dart:convert'; //json decode

import 'package:wheather_app/data/my_loaction.dart';
import 'package:wheather_app/screens/weather_screen.dart';

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  double lat3 = 0.0;
  double lon3 = 0.0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getLoaction();
  }

  @override
  void getLoaction() async {
    MyLoaction myLoaction = MyLoaction();

    await myLoaction.getMyCurrentLocation();
    lat3 = myLoaction.lat;
    lon3 = myLoaction.lon;
    var mykey = '2775adfff4b4397d706f87dc9219ae4e';
    print(lat3);
    print(lon3);

    Network network = Network('https://api.openweathermap.org/data/2.5/weather?'
        'lat=$lat3&lon=$lon3&appid=$mykey&units=metric');
    var myJson = await network.getMyjson();
    String weatherdata = myJson['weather'][0]['main'];
    print(weatherdata);

    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return WeatherScreen(parseWeatherData: myJson);
    }));
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RaisedButton(
          onPressed: () {
            // getLoaction();
          },
          child: const Text(
            'Get my loaction',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          color: Colors.blue,
        ),
      ),
    );
  }
}
