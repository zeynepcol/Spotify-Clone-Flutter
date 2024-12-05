import 'package:flutter/material.dart';

class PremiumPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Premium"),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Text("Premium sayfası", style: TextStyle(color: Colors.white)),
      ),
    );
  }
}
