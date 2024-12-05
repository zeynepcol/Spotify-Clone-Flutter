import 'package:flutter/material.dart';
import 'all_tab.dart';
import 'music_tab.dart';
import 'podcast_tab.dart';
import 'year_tab.dart';
import 'library.dart';
import 'search.dart';
import 'premium.dart';
import 'profile.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';




class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}



class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  int _selectedHeaderIndex = 1; // Varsayılan "Tümü" seçili

  final List<String> _titles = [
    'Ana sayfa',
    'Ara',
    'Kitaplığın',
    'Premium',
  ];

  final List<String> _headerCategories = [
    'Z',
    'Tümü',
    '2024 Özeti',
    'Müzik',
    'Podcast’ler',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        title: Text(
          'Spotify',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications, color: Colors.white),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.settings, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header Menü
            Container(
              color: Colors.black,
              padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(_headerCategories.length, (index) {
                    return GestureDetector(
                      onTap: () {
                        if (index == 0) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ProfileScreen()),
                          );
                        } else {
                          setState(() {
                            _selectedHeaderIndex = index;
                          });
                        }
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                        margin: EdgeInsets.only(right: 16.0),
                        decoration: BoxDecoration(
                          color: _selectedHeaderIndex == index
                              ? Colors.green
                              : Colors.black, // Aktif ve pasif renkler
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: index == 0
                            ? CircleAvatar(
                          backgroundColor: Colors.pink,
                          child: Text(
                            'Z',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        )
                            : Center(
                          child: Text(
                            _headerCategories[index],
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    );
                  }),
                ),
              ),
            ),




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
                'assets/images/sjdnjsnjc.jpg',
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
                'assets/images/sdcskd.jpg',

              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
          // Bottom navigation bar'da tıklama işlemiyle yönlendirme
          if (index == 1) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SearchPage()), // "Ara" tıklandığında
            );
          } else if (index == 2) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => LibraryPage()), // "Kitaplığın" tıklandığında
            );
          } else if (index == 3) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => PremiumPage()), // "Premium" tıklandığında
            );
          }
        },
        backgroundColor: Colors.black,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.white70,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Ana sayfa',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Ara',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_music),
            label: 'Kitaplığın',
          ),
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.spotify),
            label: 'Premium',
          ),
        ],
      ),
    );
  }
}

class SectionTitle extends StatelessWidget {
  final String title;

  SectionTitle({required this.title});





  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
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

  HorizontalList({required this.items});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        itemBuilder: (context, index) {
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
                  items[index], // Resim yolunu buraya ekliyoruz
                  fit: BoxFit.cover, // Resmi kapsayan uygun yerleşim
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}