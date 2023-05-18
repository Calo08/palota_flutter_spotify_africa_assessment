import 'package:flutter/material.dart';

//TODO: complete this page - you may choose to change it to a stateful widget if necessary
class SpotifyPlaylist extends StatelessWidget {
  const SpotifyPlaylist({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
  Future<List<Category>?> getPlaylist(String json) async {
    var client = http.Client();

    var uri = Uri.parse(
        'https://api.spotify.com/v1/playlists/3cEYpjA9oz9GiPac4AsH4n');
    var response = await client.get(uri);
    if (response.statusCode == 200) {
      var json = response.body;
      return getPlaylist(json);
    }
  }
}
