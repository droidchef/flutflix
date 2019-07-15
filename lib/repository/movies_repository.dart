import 'package:http/http.dart' show Client;
import 'dart:async';
import 'dart:convert';

class MoviesRepository {

  Client httpClient = Client();
  final _apiKey = 'da0c0e40fa23a956aec2d5aa48032b32';
  final _baseUrl = "http://api.themoviedb.org/3/movie";


  
}