import 'package:flutter/material.dart';

class SongPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Üstteki büyük kare resim
            Center(
              child: Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: AssetImage('assets/images/fleetwoodmac_rumours_album.jpg'), // Resim yolu
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            SizedBox(height: 16),

            // Altındaki metin açıklaması
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Tune in to Top Tracks from Fleetwood Mac, Alice Cooper and many more",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      Icon(Icons.music_note, color: Colors.green),
                      SizedBox(width: 8),
                      Text(
                        "Spotify",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  Text(
                    "200,000 likes · 3h 45min",
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16),

            // İkonlar (kalp, üç nokta, play)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: [
                  Icon(Icons.favorite_border, color: Colors.white, size: 28),
                  SizedBox(width: 16),
                  Icon(Icons.more_vert, color: Colors.white, size: 28),
                  Spacer(),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                      padding: EdgeInsets.all(16),
                      backgroundColor: Colors.green,
                    ),
                    onPressed: () {},
                    child: Icon(Icons.play_arrow, size: 32, color: Colors.white),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16),

            // Şarkılar listesi
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: 6, // Şarkı sayısı
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/song${index + 1}.jpg'), // Şarkı resimleri
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  title: Text(
                    index == 0
                        ? "yes i'm changing"
                        : index == 1
                        ? "sunshine of your love"
                        : index == 2
                        ? "songname"
                        : index == 3
                        ? "songname"
                        : index == 4
                        ? "songname"
                        : "songname",
                    style: TextStyle(color: Colors.white),
                  ),
                  subtitle: Text(
                    index == 0
                        ? "Tame Impala"
                        : index == 1
                        ? "Cream"
                        : index == 2
                        ? "artist"
                        : index == 3
                        ? "artist"
                        : index == 4
                        ? "artist"
                        : "artist",
                    style: TextStyle(color: Colors.white70),
                  ),
                  trailing: Icon(Icons.more_vert, color: Colors.white),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
