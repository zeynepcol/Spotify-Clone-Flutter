import 'package:flutter/material.dart';

class LibraryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        leading: Container(
          margin: EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            color: Colors.pink, // Yuvarlak pembe daire
            shape: BoxShape.circle,
          ),
          child: Center(
            child: Text(
              'Z', // Z harfi
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
        ),
        title: Text(
          "Kitaplığın",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Çalma Listeleri, Albümler, Sanatçılar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildCategoryBox("Çalma Listeleri"),
                  _buildCategoryBox("Albümler"),
                  _buildCategoryBox("Sanatçılar"),
                ],
              ),
            ),
            // Son Çalınanlar başlığı ve resimler
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
              child: Text(
                "Son Çalınanlar",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            // Resimlerin olduğu alan
            Container(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10.0),
                    child: _buildImageItem('assets/images/thisis1.jpg'),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10.0),
                    child: _buildImageItem('assets/images/thisis2.jpg'),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10.0),
                    child: _buildImageItem('assets/images/thisis3.jpg'),
                  ),
                ],
              ),
            ),
            Container(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10.0),
                    child: _buildImageItem('assets/images/thisis3.jpg'),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10.0),
                    child: _buildImageItem('assets/images/thisis4.jpg'),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10.0),
                    child: _buildImageItem('assets/images/thisis5.jpg'),
                  ),
                ],
              ),
            ),
            Container(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10.0),
                    child: _buildImageItem('assets/images/thisis5.jpg'),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10.0),
                    child: _buildImageItem('assets/images/thisis1.jpg'),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10.0),
                    child: _buildImageItem('assets/images/thisis2.jpg'),
                  ),
                ],
              ),
            ),
            Container(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10.0),
                    child: _buildImageItem('assets/images/thisis3.jpg'),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10.0),
                    child: _buildImageItem('assets/images/thisis4.jpg'),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10.0),
                    child: _buildImageItem('assets/images/thisis5.jpg'),
                  ),
                ],
              ),
            ),
            Container(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10.0),
                    child: _buildImageItem('assets/images/thisis1.jpg'),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10.0),
                    child: _buildImageItem('assets/images/thisis2.jpg'),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10.0),
                    child: _buildImageItem('assets/images/thisis3.jpg'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Yan yana 3 kategori için buton
  Widget _buildCategoryBox(String text) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
      decoration: BoxDecoration(
        color: Colors.grey[850],
        borderRadius: BorderRadius.circular(30),
      ),
      child: Text(
        text,
        style: TextStyle(color: Colors.white),
      ),
    );
  }

  // Resimlerin yatayda gösterileceği container
  Widget _buildImageItem(String imagePath) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Container(
        width: 150,
        decoration: BoxDecoration(
          color: Colors.grey[850],
          borderRadius: BorderRadius.circular(8),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.asset(
            imagePath,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
