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
            child: ListView.builder(
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
                  child: Card(
                    child: ListTile(
                      title: Text(
                        '$index ' + movies[index % 4],
                      ),
                      leading: CircleAvatar(
                        child: Image.asset('data-repo/img/bg1.jpg'),
                      ),
                      trailing: IconButton(
                        icon: Icon(
                          Icons.movie_creation,
                          color: (index % 2 == 0 ? Colors.deepPurple : Colors.purple),
                        ),
                        onPressed: () {
                          print('Pressed Icon Number $index');
                        },
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
