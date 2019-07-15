
class Movie {

    final int id;

    final String title;
    
    final String posterPath;

    final String backdropPath;

    final String overview;

    final String releaseDate;

    final String voteAverage;

    Movie(this.id, this.title, this.posterPath, this.backdropPath, this.overview, this.releaseDate, this.voteAverage);

    Movie.fromJson(Map<String, dynamic> json) 
      : id = json['id'],
        title = json['title'],
        posterPath = json['poster_path'],
        backdropPath = json['backdrop_path'],
        overview = json['overview'],
        releaseDate = json['release_date'],
        voteAverage = json['vote_average'].toString();
    
    Map<String, dynamic> toJson() => 
    {
      'id' : id,
      'title': title,
      'poster_path': posterPath,
      'backdrop_path': backdropPath,
      'overview': overview,
      'release_date': releaseDate,
      'vote_average': voteAverage
    };

}
