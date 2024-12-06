import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ara"),
        backgroundColor: Colors.black,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundColor: Colors.pink,
            child: Text(
              "Z",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(16.0),
            padding: EdgeInsets.symmetric(horizontal: 12.0),
            height: 70.0,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8.0),
              border: Border.all(color: Colors.grey),
            ),
            child: Row(
              children: [
                Icon(Icons.search, color: Colors.grey),
                SizedBox(width: 8.0),
                Expanded(
                  child: Text(
                    "Ne dinlemek istiyorsun?",
                    style: TextStyle(color: Colors.grey, fontSize: 16.0),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 8.0,
              mainAxisSpacing: 8.0,
              padding: const EdgeInsets.all(8.0),
              children: [
                _buildImageCard("assets/images/search1.jpg"),
                _buildImageCard("assets/images/search2.jpg"),
                _buildImageCard("assets/images/search3.jpg"),
                _buildImageCard("assets/images/search4.jpg"),
                _buildImageCard("assets/images/search5.jpg"),
                _buildImageCard("assets/images/search6.jpg"),
                _buildImageCard("assets/images/search2.jpg"),
                _buildImageCard("assets/images/search1.jpg"),
              ],
            ),
          ),
        ],
      ),
      backgroundColor: Colors.black,
    );
  }

  Widget _buildImageCard(String imagePath) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(color: Colors.grey),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8.0),
        child: Image.asset(
          imagePath,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}