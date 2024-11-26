import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  final List<String> _titles = [
    'Home',
    'Search',
    'Your Library',
    'Premium',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        title: Text(
          _titles[_currentIndex],
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
      body: ListView(
        padding: EdgeInsets.only(bottom: 16.0),
        children: [
          SectionTitle(title: 'Made for you'),
          HorizontalList(
            items: [
              'Ed Sheeran, Katy Perry, Pitbull',
              'Latest Playlist Just for You',
              'Latest Playlist Just for You',
              'Latest Playlist Just for You',
            ],
          ),
          SectionTitle(title: 'Sanatçılar'), // Yeni "Sanatçılar" başlığı
          CircleList(
            items: [
              'E',
              'A',
              'K',
              'T',
              'T'
            ],
          ),
          SectionTitle(title: 'Trending now'),
          HorizontalList(
            items: [
              'Wonderwall - Oasis',
              'Back In Black - AC/DC',
              'Teardrop - Massive Attack',
              'Glory Box - Portishead',
              'Angel - Massive Attack',
              'Machine Gun - Portishead',
              'Roads - Portishead',
              'Paradise Circus - Massive Attack',
            ],
          ),
          SectionTitle(title: 'Top picks for you'),
          HorizontalList(
            items: [
              'The Beatles',
              'The Cream',
              'Led Zeppelin',
              'Dua Lipa',
              'Maroon 5',
              'Rihanna'
            ],
          ),
        ],
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
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_music),
            label: 'Your Library',
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
              width: 120,
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

class CircleList extends StatelessWidget {
  final List<String> items;

  CircleList({required this.items});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 40,
                  backgroundColor: Colors.grey[850],
                  child: Text(
                    items[index][0],
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  items[index],
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
