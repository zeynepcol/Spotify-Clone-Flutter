import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 6), // Z'yi biraz daha aşağı kaydırmak için padding ekledim
              child: CircleAvatar(
                radius: 20,
                backgroundColor: Colors.pink, // Pembe renk
                child: Text(
                  'Z',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 28, // Büyütülmüş yazı boyutu
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(width: 10),
            Text(
              'zeynepcol',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30, // Büyütülmüş yazı boyutu
              ),
            ),
          ],
        ),
        backgroundColor: Colors.black,
        elevation: 0,
      ),
      body: Column(
        children: [
          // Beyaz çizgi için padding ekleyerek alt tarafa kaydırma
          Padding(
            padding: const EdgeInsets.only(top: 20), // Çizgiyi alt tarafa kaydırmak için padding ekledim
            child: Container(
              width: double.infinity,
              height: 1,
              color: Colors.white,
            ),
          ),
          // Menü Elemanları
          Expanded(
            child: ListView(
              padding: EdgeInsets.all(16),
              children: [
                ListTile(
                  leading: Icon(Icons.add, color: Colors.white),
                  title: Text(
                    'Hesap Ekle',
                    style: TextStyle(color: Colors.white, fontSize: 22), // Büyütülmüş yazı boyutu
                  ),
                  onTap: () {},
                ),
                ListTile(
                  leading: Icon(Icons.notifications, color: Colors.white),
                  title: Text(
                    'Yenilikler',
                    style: TextStyle(color: Colors.white, fontSize: 22), // Büyütülmüş yazı boyutu
                  ),
                  onTap: () {},
                ),
                ListTile(
                  leading: Icon(Icons.history, color: Colors.white),
                  title: Text(
                    'Son Çalınanlar',
                    style: TextStyle(color: Colors.white, fontSize: 22), // Büyütülmüş yazı boyutu
                  ),
                  onTap: () {},
                ),
                ListTile(
                  leading: Icon(Icons.settings, color: Colors.white),
                  title: Text(
                    'Ayarlar',
                    style: TextStyle(color: Colors.white, fontSize: 22), // Büyütülmüş yazı boyutu
                  ),
                  onTap: () {},
                ),
                ListTile(
                  leading: Icon(Icons.lock, color: Colors.white),
                  title: Text(
                    'Gizlilik',
                    style: TextStyle(color: Colors.white, fontSize: 22), // Büyütülmüş yazı boyutu
                  ),
                  onTap: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
