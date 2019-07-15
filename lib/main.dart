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

class MoviesGrid extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return null;
  }

}
