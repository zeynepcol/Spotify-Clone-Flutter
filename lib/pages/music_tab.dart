import 'package:flutter/material.dart';

class MusicTabPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Müzik', style: TextStyle(color: Colors.white)),
      ),
      body: Center(
        child: Text(
          'Müzik sayfası içeriği burada olacak.',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
