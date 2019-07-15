import 'movie.dart';

class MoviesResult {

  final List<dynamic> movies;
  final int page;
  final int totalResults;
  final int totalPages;

  MoviesResult({this.movies, this.page, this.totalResults, this.totalPages});

  MoviesResult.fromJson(Map<String, dynamic> json) 
      : page = json['page'],
        totalResults = json['total_results'],
        totalPages = json['total_pages'],
        movies = json['results'].map((result) => Movie.fromJson(result)).toList();
}