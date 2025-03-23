import 'package:flutter/material.dart';

class Player {
  String? name;

  Player();
}

void main() {
  var nico = Player();
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(elevation: 99, title: Text('Hello Flutter')),
        body: Center(child: Text('Hello World')),
      ),
    );
  }
}
