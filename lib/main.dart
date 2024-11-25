import 'package:flutter/material.dart';
import 'pages/home.dart'; // pages klasöründeki home.dart dosyasını içe aktarıyoruz

void main() {
  runApp(SpotifyApp());
}

class SpotifyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Debug banner'ı gizler
      title: 'Spotify Clone',
      theme: ThemeData(
        brightness: Brightness.dark, // Karanlık tema
        primarySwatch: Colors.green, // Spotify temasıyla uyumlu
      ),
      home: HomePage(), // Ana sayfa olarak home.dart'taki HomePage'i çağırıyoruz
    );
  }
}
