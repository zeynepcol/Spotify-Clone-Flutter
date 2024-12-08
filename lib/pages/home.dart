import 'package:flutter/material.dart';
import 'package:spotify/pages/all_tab.dart';
import 'package:spotify/pages/library.dart';
import 'package:spotify/pages/music_tab.dart';
import 'package:spotify/pages/podcast_tab.dart';
import 'package:spotify/pages/premium.dart';
import 'package:spotify/pages/profile.dart';
import 'package:spotify/pages/search.dart';
import 'package:spotify/pages/year_tab.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  int _selectedCategoryIndex = 1;

  final List<String> _headerCategories = [
    'Z',
    'Tümü',
    '2024 Özeti',
    'Müzik',
    'Podcast’ler',
  ];

  final List<Widget> _categoryPages = [
    AllTabPage(),
    YearTabPage(),
    MusicTabPage(),
    PodcastTabPage(),
  ];

  void _onCategorySelected(int index) {
    setState(() {
      _selectedCategoryIndex = index;
    });
  }

  void _onBottomNavSelected(int index) {
    setState(() {
      _currentIndex = index;
    });

    switch (index) {
      case 1:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => SearchPage()),
        );
        break;
      case 2:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => LibraryPage()),
        );
        break;
      case 3:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => PremiumPage()),
        );
        break;
      default:
        break;
    }
  }

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
      body: Column(
        children: [
          // Header Categories
          Container(
            color: Colors.black,
            padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(_headerCategories.length, (index) {
                  return GestureDetector(
                    onTap: () {
                      if (index != 0) {
                        _onCategorySelected(index - 1);
                      }
                    },
                    child: Container(
                      padding:
                      EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                      margin: EdgeInsets.only(right: 16.0),
                      decoration: BoxDecoration(
                        color: _selectedCategoryIndex == index - 1
                            ? Colors.green
                            : Colors.black,
                        border: Border.all(color: Colors.white54),
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
          // Content
          Expanded(
            child: _categoryPages[_selectedCategoryIndex],
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _onBottomNavSelected,
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
