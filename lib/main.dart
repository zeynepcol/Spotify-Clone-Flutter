import 'package:flutter/material.dart';
import 'pages/home.dart';

void main() {
  runApp(SpotifyApp());
}

class SpotifyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Spotify Clone',
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.green,
      ),
      home: HomePage(),
    );
  }
}
