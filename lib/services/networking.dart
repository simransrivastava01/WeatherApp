import 'package:http/http.dart' as http;
import 'dart:convert';

class NetworkHelper {
  final String url;

  NetworkHelper(this.url);

  Future getData() async {
    var response = await http.get(this.url);

    if (response.statusCode == 200) {
      var data = response.body;

      return jsonDecode(data);
    } else {
      print(response.statusCode);

      return null;
    }
  }
}