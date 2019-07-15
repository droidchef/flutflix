import 'package:http/http.dart' show Client;
import 'dart:async';
import 'dart:convert';

import 'package:uri/uri.dart';

class MoviesRepository {

  Client httpClient = Client();
  final _apiKey = 'da0c0e40fa23a956aec2d5aa48032b32';
  final _baseUrl = "http://api.themoviedb.org/3/movie";

  void nowPlaying() {
    var template = UriTemplate("$_baseUrl/now_playing{?api_key}");
    String requestUrl = template.expand({"api_key": _apiKey});
    final response = httpClient.get(requestUrl);
  }

  
}