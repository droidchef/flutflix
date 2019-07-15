import 'package:flutter/material.dart';

void main() => runApp(FlutFlix());

class FlutFlix extends StatelessWidget {
  var movies = ['Alpha', 'Beta', 'Gamma', 'Delta'];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FlutFlix',
      home: Scaffold(
        backgroundColor: Colors.deepOrange,
        appBar: AppBar(
          title: Text('FlutFlix'),
        ),
        body: Center(
          child: Container(
              color: Colors.green,
              child: GridView.builder(
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16.0, vertical: 16.0),
                    child: Image.asset(
                      'data-repo/img/bg1.jpg',
                      fit: BoxFit.fill,
                    ),
                  );
                },
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 2 / 3,
                ),
              )),
        ),
      ),
    );
  }
}

class Movie {

    final int id;

    final String title;
    
    final String posterPath;

    final String backdropPath;

    final String overview;

    final String releaseDate;

    final double voteAverage;

    Movie(this.id, this.title, this.posterPath, this.backdropPath, this.overview, this.releaseDate, this.voteAverage);

    Movie.fromJson(Map<String, dynamic> json) 
      : id = json['id'],
        title = json['title'],
        posterPath = json['poster_path'],
        backdropPath = json['backdrop_path'],
        overview = json['overview'],
        releaseDate = json['release_date'],
        voteAverage = json['vote_average'];
        
    
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

class MoviesGrid extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return null;
  }

}

class _MovieGridState extends State<MoviesGrid> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return null;
  }

}

