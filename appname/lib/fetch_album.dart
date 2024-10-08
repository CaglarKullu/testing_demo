import 'dart:convert';

import 'package:http/http.dart' as http;

Future<Album> fetchAlbum(http.Client client) async {
  final response = await client
      .get(Uri.parse('https://jsonplaceholder.typicode.com/albums/1'));

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    return Album.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}

class Album {
  final int? userId;
  final int? id;
  final String? title;

  Album({required this.userId, required this.id, required this.title});

  static Album fromJson(Map<String, dynamic> jsonDecode) {
    return Album(
      userId: jsonDecode['userId'] as int?,
      id: jsonDecode['id'] as int?,
      title: jsonDecode['title'] as String?,
    );
  }
}
