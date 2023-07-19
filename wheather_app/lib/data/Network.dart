import 'package:http/http.dart' as http;
import 'dart:convert'; //json decode

class Network {
  Network(this.url);
  String url ;

  Future<dynamic> getMyjson() async {
    try {
      http.Response response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        String jsonData = response.body;
        var myJson = jsonDecode(jsonData);
        return myJson;
      }
      else {
        print(response.statusCode);
        return;
      }
    } catch (e) {
      print('시발');
    }
  }
}
