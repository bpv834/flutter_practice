import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../dto/StoreResultDto.dart';

class StoreApi{
  final _dio = Dio();
  Future<StoreResultDto> getStoreResult() async {
    final response = await _dio.get('https://gist.githubusercontent.com/junsuk5/bb7485d5f70974deee920b8f0cd1e2f0/raw/063f64d9b343120c2cb01a6555cf9b38761b1d94/sample.json');

    return StoreResultDto.fromJson(jsonDecode(response.data));
  }
}