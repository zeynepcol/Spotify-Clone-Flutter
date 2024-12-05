import 'package:flutter/material.dart';
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
                        setState(() {
                          _selectedHeaderIndex = index;
                        });
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                        margin: EdgeInsets.only(right: 16.0),
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: _selectedHeaderIndex == index
                                  ? Colors.green
                                  : Colors.transparent,
                              width: 2.0,
                            ),
                          ),
                        ),
                        child: Text(
                          _headerCategories[index],
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
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
              items: ['item', 'item', 'item', 'item', 'item', 'item', 'item', 'item', 'item'],
            ),
            SectionTitle(title: "Denemeye değer programlar"),
            HorizontalList(
              items: ['item', 'item', 'item', 'item', 'item', 'item', 'item', 'item', 'item'],
            ),
            SectionTitle(title: "Tavsiye Edilen İstasyonlar"),
            HorizontalList(
              items: ['item', 'item', 'item', 'item', 'item', 'item', 'item', 'item', 'item'],
            ),
            SectionTitle(title: "Bugün için tavsiye"),
            HorizontalList(
              items: ['item', 'item', 'item', 'item', 'item', 'item', 'item', 'item', 'item'],
            ),
            SectionTitle(title: "Sanatçıların en iyileri"),
            HorizontalList(
              items: ['item', 'item', 'item', 'item', 'item', 'item', 'item', 'item', 'item'],
            ),
            SectionTitle(title: "En sevdiğin sanatçılar"),
            HorizontalList(
              items: ['item', 'item', 'item', 'item', 'item', 'item', 'item', 'item', 'item'],
            ),
            SectionTitle(title: "Günlük müzik ihtiyacın"),
            HorizontalList(
              items: ['item', 'item', 'item', 'item', 'item', 'item', 'item', 'item', 'item'],
            ),
            SectionTitle(title: "Son dinlediklerine dayanarak"),
            HorizontalList(
              items: ['item', 'item', 'item', 'item', 'item', 'item', 'item', 'item', 'item'],
            ),
            SectionTitle(title: "Popüler radyolar"),
            HorizontalList(
              items: ['item', 'item', 'item', 'item', 'item', 'item', 'item', 'item', 'item'],
            ),
            SectionTitle(title: "Popüler sanatçılar"),
            HorizontalList(
              items: ['item', 'item', 'item', 'item', 'item', 'item', 'item', 'item', 'item'],
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
              child: Center(
                child: Text(
                  items[index],
                  style: TextStyle(color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
