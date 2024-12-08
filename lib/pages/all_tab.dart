import 'package:flutter/material.dart';
import 'package:spotify/pages/playlist.dart';
import 'package:spotify/pages/song.dart';

class AllTabPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SectionTitle(title: "zeynepcol İçin Derlendi"),
            HorizontalList(
              items: [
                'assets/images/dailymix1.jpg',
                'assets/images/dailymix2.jpg',
                'assets/images/dailymix3.jpg',
                'assets/images/dailymix4.jpg',
                'assets/images/dailymix5.jpg',
              ],
            ),
            SectionTitle(title: "Tavsiye Edilen İstasyonlar"),
            HorizontalList(
              items: [
                'assets/images/radyo1.jpg',
                'assets/images/radyo2.jpg',
                'assets/images/radyo3.jpg',
                'assets/images/radyo4.jpg',
                'assets/images/radyo5.jpg',
              ],
            ),
            SectionTitle(title: "Bugün için tavsiye"),
            HorizontalList(
              items: [
                'assets/images/portishead_dummy_album.jpg',
                'assets/images/blackeyedpeas_album.jpg',
                'assets/images/fleetwoodmac_rumours_album.jpg',
                'assets/images/massiveattack_mezzanine_album.jpg',
              ],
            ),
            SectionTitle(title: "Sanatçıların en iyileri"),
            HorizontalList(
              items: [
                'assets/images/thisis1.jpg',
                'assets/images/thisis2.jpg',
                'assets/images/thisis3.jpg',
                'assets/images/thisis4.jpg',
                'assets/images/thisis5.jpg',
              ],
            ),
            SectionTitle(title: "En sevdiğin sanatçılar"),
            HorizontalList(
              items: [
                'assets/images/circle1.png',
                'assets/images/circle2.png',
                'assets/images/circle3.png',
              ],
            ),
            SectionTitle(title: "Günlük müzik ihtiyacın"),
            HorizontalList(
              items: [
                'assets/images/dailymusic1.jpg',
                'assets/images/dailymusic2.jpg',
                'assets/images/dailymusic3.jpg',
              ],
            ),
            SectionTitle(title: "Son dinlediklerine dayanarak"),
            HorizontalList(
              items: [
                'assets/images/hitmix1.jpg',
                'assets/images/hitmix2.jpg',
                'assets/images/hitmix3.jpg',
              ],
            ),
            SectionTitle(title: "Popüler radyolar"),
            HorizontalList(
              items: [
                'assets/images/radyo6.jpg',
                'assets/images/radyo7.jpg',
                'assets/images/radyo8.jpg',
              ],
            ),
            SectionTitle(title: "Popüler sanatçılar"),
            HorizontalList(
              items: [
                'assets/images/circle1.png',
                'assets/images/circle2.png',
                'assets/images/circle3.png',
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class SectionTitle extends StatelessWidget {
  final String title;

  const SectionTitle({required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Text(
        title,
        style: TextStyle(
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

class HorizontalList extends StatelessWidget {
  final List<String> items;

  const HorizontalList({required this.items});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: GestureDetector(
              onTap: () {
                // Navigator ile PlaylistPage'e yönlendirme
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PlaylistPage()),
                );
              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.asset(
                  items[index],
                  fit: BoxFit.cover,
                  width: 150,
                  height: 150,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}