import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

class RemoteService {
  Future<List<Category>?> getCategory(String json) async {
    var client = http.Client();

    var uri = Uri.parse('https://api.spotify.com/v1/browse/categories/afro');
    var response = await client.get(uri);
    if (response.statusCode == 200) {
      var json = response.body;
      return getCategory(json);
    }
  }
}
