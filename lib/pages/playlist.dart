import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PlaylistPage extends StatelessWidget {
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
            Center(
              child: Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: AssetImage('assets/images/fleetwoodmac_rumours_album.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Tune in to Top Tracks from Fleetwood Mac, Alice In Chains and many more",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(height: 12),
                  Row(
                    children: [
                      FaIcon(FontAwesomeIcons.spotify, color: Colors.green),
                      SizedBox(width: 12),
                      Text(
                        "Spotify",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  Text(
                    "210,476 likes · 3h 45min",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: [
                  Icon(Icons.favorite_border, color: Colors.white, size: 28),
                  SizedBox(width: 16),
                  Icon(Icons.more_vert, color: Colors.white, size: 28),
                  Spacer(),
                  Row(
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: CircleBorder(),
                          padding: EdgeInsets.all(16),
                          backgroundColor: Colors.black,
                        ),
                        onPressed: () {},
                        child:FaIcon(FontAwesomeIcons.shuffle, size: 30, color: Colors.green),
                      ),
                      SizedBox(width: 12),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: CircleBorder(),
                          padding: EdgeInsets.all(16),
                          backgroundColor: Colors.green,
                        ),
                        onPressed: () {},
                        child: Icon(Icons.play_arrow, size: 30, color: Colors.white),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 16),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: 6,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/song${index + 1}.jpg'),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  title: Text(
                    index == 0
                        ? "yes i'm changing"
                        : index == 1
                        ? "Sunshine of Your Love"
                        : index == 2
                        ? "Down In A Hole"
                        : index == 3
                        ? "Welcome to the Jungle"
                        : index == 4
                        ? "i want you (she's so heavy)"
                        : "Puppet",
                    style: TextStyle(color: Colors.white),
                  ),
                  subtitle: Text(
                    index == 0
                        ? "Tame Impala"
                        : index == 1
                        ? "Cream"
                        : index == 2
                        ? "Alice In Chains"
                        : index == 3
                        ? "Guns N' Roses"
                        : index == 4
                        ? "The Beatles"
                        : "Tyler, The Creator",
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