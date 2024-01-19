import 'package:intl/intl.dart';
import 'package:stock_app/data/source/remote/dto/intra_day_info_dto.dart';
import 'package:stock_app/domain/model/intra_day_info.dart';

//dto로 타입으로 확장시키는 확장함수
//dto를 받아서 원하는 info타입으로 리턴함
extension TointraDayInfo on IntraDayInfoDto {
  IntraDayInfo toIntraDayInfo() {
    final formatter = DateFormat('yyyy-MM-dd HH:mm:ss');
    return IntraDayInfo(
      data: formatter.parse(timeStamp),
      close: close,
    );
  }
}
