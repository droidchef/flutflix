import 'package:flutflix/model/movies_result.dart';
import 'package:flutflix/repository/movies_repository.dart';
import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

import 'model/movie.dart';

void main() => runApp(FlutFlix());

class FlutFlix extends StatelessWidget {
  var movies = ['Alpha', 'Beta', 'Gamma', 'Delta'];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FlutFlix',
      routes: {
        '/now': (context) => NowPlayingScaffold(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/second': (context) => SecondScreen(),
      },
      home: NowPlayingScaffold(),
    );
  }
}

class NowPlayingScaffold extends StatelessWidget {
  const NowPlayingScaffold({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange,
      appBar: AppBar(
        title: Text('FlutFlix'),
      ),
      body: Center(
        child: Container(
          color: Colors.green,
          child: MoviesGrid(),
        ),
      ),
    );
  }
}

class MoviesGrid extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MovieGridState();
}

class _MovieGridState extends State<MoviesGrid> {
  var _moviesRepository = MoviesRepository();
  var _movies = List<Movie>();

  @override
  void initState() {
    super.initState();
    _loadMovies();
  }

  void _loadMovies() async {
    MoviesResult result = await _moviesRepository.nowPlaying();
    _movies.addAll(result.movies);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, '/second');
          },
        child: GridView.builder(
          itemCount: _movies.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
              child: FadeInImage.memoryNetwork(
                placeholder: kTransparentImage,
                image:
                    'https://image.tmdb.org/t/p/w342${_movies[index].posterPath}',
                fit: BoxFit.cover,
                fadeInDuration: Duration(milliseconds: 200),
              ),
            );
          },
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 2 / 3,
          ),
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Screen"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Go back!'),
        ),
      ),
    );
  }
}
