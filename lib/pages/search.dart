import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ara"),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Text("Ara sayfası", style: TextStyle(color: Colors.white)),
      ),
    );
  }
}
