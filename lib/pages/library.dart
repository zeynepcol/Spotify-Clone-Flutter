import 'package:flutter/material.dart';

class LibraryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Kitaplığın"),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Text("Kitaplık sayfası", style: TextStyle(color: Colors.white)),
      ),
    );
  }
}
