

class Store {
  String? code;
  String? name;
  String? addr;
  String? type;
  double? lat;
  double? lng;
  String? stockAt;
  String? remainStat;
  String? createdAt;
  double?  dist;

  Store({
    required this.code,
    required this.name,
    required this.addr,
    required this.type,
    required this.lat,
    required this.lng,
    required this.stockAt,
    required this.remainStat,
    required this.createdAt,
  });

  Store.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    name = json['name'];
    addr = json['addr'];
    type = json['type'];
    lat = json['lat'];
    lng = json['lng'];
    stockAt = json['stock_at'];
    remainStat = json['remain_stat'];
    createdAt = json['created_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['code'] = code;
    data['name'] = name;
    data['addr'] = addr;
    data['type'] = type;
    data['lat'] = lat;
    data['lnt']= lng;
    data['stock_at'] = stockAt;
    data['remain_stat'] = remainStat;
    data['created_at'] = createdAt;
    return data;
  }
}
