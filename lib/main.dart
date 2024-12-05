import 'package:flutter/material.dart';
import 'pages/home.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'pages/all_tab.dart';
import 'pages/music_tab.dart';
import 'pages/podcast_tab.dart';
import 'pages/year_tab.dart';
import 'pages/library.dart';
import 'pages/search.dart';
import 'pages/premium.dart';


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
