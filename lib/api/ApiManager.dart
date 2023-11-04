import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:project_route/model/movieResponse/MovieResponse.dart';

class ApiManager {
  static const baseUrl = 'api.themoviedb.org';
  static const apiKey = "ed67e8a4859a3f2ee8d30df32c7ddb81";

  static Future<MovieResponse> getPopularMovies() async {
    var uri = Uri.https(baseUrl, '3/movie/popular', {
      "apikey": apiKey,
      "language": "en-US",
      "page": 1,
    });
    var response = await http.get(uri);
    var json = jsonDecode(response.body);
    var moviesResponse = MovieResponse.fromJson(json);
    return moviesResponse;
  }
}
