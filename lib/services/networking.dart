import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class NetworkHelper {
  final String uri;

  NetworkHelper(this.uri);

  Future getData() async {
    Uri parsedUri = Uri.parse(uri);
    http.Response response = await http.get(parsedUri);

    if (response.statusCode == 200) {
      return convert.jsonDecode(response.body);
    } else {
      print(response.statusCode);
    }
  }
}
