import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Model {
  Widget? getWeatherIcon(int condition) {
    if (condition < 300) {
      return SvgPicture.asset(
        'svg/Cloud-Lightning.svg',
        color: Colors.black87,
      );
    }
    if (condition < 600) {
      return SvgPicture.asset(
        'svg/Cloud-Snow.svg',
        color: Colors.black87,
      );
    }
    if (condition == 800) {
      return SvgPicture.asset(
        'svg/Cloud-Sun.svg',
        color: Colors.black87,
      );
    }
    if (condition <= 804) {
      return SvgPicture.asset(
        'svg/Sun.svg',
        color: Colors.black87,
      );
    }
  }

  Widget? getAirIcon(int idx) {
    if (idx == 1) {
      return Image.asset(
        'image/good.png',
        width: 37,
        height: 35,
      );
    } else if (idx == 2) {
      return Image.asset(
        'image/fair.png',
        width: 37,
        height: 35,
      );
    } else if (idx == 3) {
      return Image.asset(
        'image/moderate.png',
        width: 37,
        height: 35,
      );
    } else if (idx == 4) {
      return Image.asset(
        'image/poor.png',
        width: 37,
        height: 35,
      );
    } else if (idx == 5) {
      return Image.asset(
        'image/bad.png',
        width: 37,
        height: 35,
      );
    }
  }

  Widget? getAirCondition(int idx) {
    if (idx == 1) {
      return const Text(
        '"매우좋음"',
        style: TextStyle(
          color: Colors.indigo,
          fontWeight: FontWeight.bold,
        ),
      );
    }
    else if (idx == 2) {
      return const Text(
        '"좋음"',
        style: TextStyle(
          color: Colors.indigo,
          fontWeight: FontWeight.bold,
        ),
      );
    }
    else if (idx == 3) {
      return const Text(
        '"보통"',
        style: TextStyle(
          color: Colors.indigo,
          fontWeight: FontWeight.bold,
        ),
      );
    }
    else if (idx == 4) {
      return const Text(
        '"나쁨"',
        style: TextStyle(
          color: Colors.indigo,
          fontWeight: FontWeight.bold,
        ),
      );
    }
    else if (idx == 5) {
      return const Text(
        '"매우나쁨"',
        style: TextStyle(
          color: Colors.indigo,
          fontWeight: FontWeight.bold,
        ),
      );
    }
  }
}
