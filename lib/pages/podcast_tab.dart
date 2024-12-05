import 'package:flutter/material.dart';

class PodcastTabPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Podcast’ler', style: TextStyle(color: Colors.white)),
      ),
      body: Center(
        child: Text(
          'Podcast sayfası içeriği burada olacak.',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
