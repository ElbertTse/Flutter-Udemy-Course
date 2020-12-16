import 'package:http/http.dart' as http;
import 'dart:convert'; // converts json

class NetworkHelper {
  NetworkHelper(this.url);

  final String url;

  Future getData() async {
    http.Response response = await http.get(url);
    // should check status code before accessing body
    if (response.statusCode == 200) {
      String data = response.body;
      
      return jsonDecode(data);
    } else {
      print(response.statusCode);
    }
  }
}
