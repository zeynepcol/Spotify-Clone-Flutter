import 'package:flutter/material.dart';

class AllTabPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Tümü', style: TextStyle(color: Colors.white)),
      ),
      body: Center(
        child: Text(
          'Tümü sayfası içeriği burada olacak.',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
