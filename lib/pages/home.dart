import 'package:flutter/material.dart';
import 'all_tab.dart';
import 'music_tab.dart';
import 'podcast_tab.dart';
import 'year_tab.dart';
import 'library.dart';
import 'search.dart';
import 'premium.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// Define AllTabPage if it's not already defined in another file
class AllTabPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tümü'),
      ),
      body: Center(
        child: Text('This is the AllTabPage content'),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  int _selectedHeaderIndex = 1; // Default "Tümü" selected

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
          _headerCategories[_selectedHeaderIndex], // Dynamically update header title
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: _buildBodyContent(), // Dynamically change content based on selected category
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }

  // Build the body content dynamically based on the selected header tab
  Widget _buildBodyContent() {
    switch (_selectedHeaderIndex) {
      case 0: // Z
        return AllTabPage();
      case 1: // Tümü
        return AllTabPage();
      case 2: // 2024 Özeti
        return YearTabPage();
      case 3: // Müzik
        return MusicTabPage();
      case 4: // Podcast’ler
        return PodcastTabPage();
      default:
        return AllTabPage(); // Default to 'Tümü'
    }
  }

  // Build the bottom navigation bar with consistent tabs
  BottomNavigationBar _buildBottomNavigationBar() {
    return BottomNavigationBar(
      currentIndex: _currentIndex,
      onTap: (index) {
        setState(() {
          _currentIndex = index;
        });
        // Navigate based on index
        switch (index) {
          case 0:
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => HomePage()), // Home
            );
            break;
          case 1:
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => SearchPage()), // Search
            );
            break;
          case 2:
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => LibraryPage()), // Library
            );
            break;
          case 3:
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => PremiumPage()), // Premium
            );
            break;
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
                  items[index], // Add your image paths here
                  fit: BoxFit.cover, // Image fitting
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

