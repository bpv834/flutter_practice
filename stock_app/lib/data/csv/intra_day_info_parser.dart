import 'package:csv/csv.dart';
import 'package:stock_app/data/csv/csv_parser.dart';
import 'package:stock_app/data/mapper/intra_day_info_mapper.dart';
import 'package:stock_app/data/source/remote/dto/intra_day_info_dto.dart';
import 'package:stock_app/domain/model/intra_day_info.dart';

class IntraDayInfoParser implements CsvParser<IntraDayInfo> {
  @override
  Future<List<IntraDayInfo>> parse(String csvString) async {
    List<List<dynamic>> csvValues =
        const CsvToListConverter().convert(csvString);

    //맨위에줄 라벨 지우기
    csvValues.removeAt(0);
    //dynamic 형태를 intradayInfo 변수타입과 맞춰줘야 함 mapper를 활용
    return csvValues.map((e) {
      //한줄씩 List<dynamic> 한 행씩 접근
      final timestamp = e[0] ?? '';
      final close = e[4] ?? 0.0;
      //dto= data를 그대로 받아줌
      final dto = IntraDayInfoDto(timeStamp: timestamp, close: close);
      return dto.toIntraDayInfo();
    }).toList();
  }
}
