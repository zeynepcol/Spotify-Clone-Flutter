import 'package:flutter/material.dart';

class YearTabPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('2024 Özeti', style: TextStyle(color: Colors.white)),
      ),
      body: Center(
        child: Text(
          '2024 Özeti sayfası içeriği burada olacak.',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
