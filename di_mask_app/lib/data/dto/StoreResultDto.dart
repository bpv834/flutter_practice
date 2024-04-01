/// count : 222
/// stores : [{"addr":"서울특별시 강북구 솔매로 38 (미아동)","code":"11817488","created_at":"2020/07/03 11:00:00","lat":37.6254369,"lng":127.0164096,"name":"승약국","remain_stat":"plenty","stock_at":"2020/07/02 18:05:00","type":"01"},null]

class StoreResultDto {
  StoreResultDto({
      num? count, 
      List<Stores>? stores,}){
    _count = count;
    _stores = stores;
}

  StoreResultDto.fromJson(dynamic json) {
    _count = json['count'];
    if (json['stores'] != null) {
      _stores = [];
      json['stores'].forEach((v) {
        _stores?.add(Stores.fromJson(v));
      });
    }
  }
  num? _count;
  List<Stores>? _stores;
StoreResultDto copyWith({  num? count,
  List<Stores>? stores,
}) => StoreResultDto(  count: count ?? _count,
  stores: stores ?? _stores,
);
  num? get count => _count;
  List<Stores>? get stores => _stores;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['count'] = _count;
    if (_stores != null) {
      map['stores'] = _stores?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// addr : "서울특별시 강북구 솔매로 38 (미아동)"
/// code : "11817488"
/// created_at : "2020/07/03 11:00:00"
/// lat : 37.6254369
/// lng : 127.0164096
/// name : "승약국"
/// remain_stat : "plenty"
/// stock_at : "2020/07/02 18:05:00"
/// type : "01"

class Stores {
  Stores({
      String? addr, 
      String? code, 
      String? createdAt, 
      num? lat, 
      num? lng, 
      String? name, 
      String? remainStat, 
      String? stockAt, 
      String? type,}){
    _addr = addr;
    _code = code;
    _createdAt = createdAt;
    _lat = lat;
    _lng = lng;
    _name = name;
    _remainStat = remainStat;
    _stockAt = stockAt;
    _type = type;
}

  Stores.fromJson(dynamic json) {
    _addr = json['addr'];
    _code = json['code'];
    _createdAt = json['created_at'];
    _lat = json['lat'];
    _lng = json['lng'];
    _name = json['name'];
    _remainStat = json['remain_stat'];
    _stockAt = json['stock_at'];
    _type = json['type'];
  }
  String? _addr;
  String? _code;
  String? _createdAt;
  num? _lat;
  num? _lng;
  String? _name;
  String? _remainStat;
  String? _stockAt;
  String? _type;
Stores copyWith({  String? addr,
  String? code,
  String? createdAt,
  num? lat,
  num? lng,
  String? name,
  String? remainStat,
  String? stockAt,
  String? type,
}) => Stores(  addr: addr ?? _addr,
  code: code ?? _code,
  createdAt: createdAt ?? _createdAt,
  lat: lat ?? _lat,
  lng: lng ?? _lng,
  name: name ?? _name,
  remainStat: remainStat ?? _remainStat,
  stockAt: stockAt ?? _stockAt,
  type: type ?? _type,
);
  String? get addr => _addr;
  String? get code => _code;
  String? get createdAt => _createdAt;
  num? get lat => _lat;
  num? get lng => _lng;
  String? get name => _name;
  String? get remainStat => _remainStat;
  String? get stockAt => _stockAt;
  String? get type => _type;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['addr'] = _addr;
    map['code'] = _code;
    map['created_at'] = _createdAt;
    map['lat'] = _lat;
    map['lng'] = _lng;
    map['name'] = _name;
    map['remain_stat'] = _remainStat;
    map['stock_at'] = _stockAt;
    map['type'] = _type;
    return map;
  }

}