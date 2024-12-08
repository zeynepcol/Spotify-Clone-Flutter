import 'package:flutter/material.dart';

class YearTabPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 2024: En popüler sanatçı ve parçalar
            SectionWithTitleAndImages(
              title: "2024: En popüler sanatçı ve parçalar",
              items: [
                {
                  'image': 'assets/images/year1.jpg',
                  'text': 'Lvbel C5, Dedublüman',
                },
                {
                  'image': 'assets/images/year2.jpg',
                  'text': 'Ati242, Semicenk',
                },
                {
                  'image': 'assets/images/year3.jpg',
                  'text': 'Manifesto',
                },
              ],
            ),
            // En çok dinlenen programlar-Global
            SectionWithTitleAndImages(
              title: "En çok dinlenen programlar-Global",
              items: [
                {
                  'image': 'assets/images/yeartop1.jpg',
                  'text': 'The most streamed podcast',
                },
                {
                  'image': 'assets/images/yeartop2.jpg',
                  'text': 'Estos son los podcast',
                },
                {
                  'image': 'assets/images/yeartop1.jpg',
                  'text': 'The most',
                },
              ],
            ),
            // 2024 yılına bakış
            SectionWithTitleAndImages(
              title: "2024 yılına bakış",
              items: [
                {
                  'image': 'assets/images/yearlook1.jpg',
                  'text': 'Simge, Ebru Gündeş',
                },
                {
                  'image': 'assets/images/yearlook2.jpg',
                  'text': 'Sezen Aksu, Güneş',
                },
                {
                  'image': 'assets/images/yearlook3.jpg',
                  'text': 'TUANA',
                },
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class SectionWithTitleAndImages extends StatelessWidget {
  final String title;
  final List<Map<String, String>> items;

  const SectionWithTitleAndImages({required this.title, required this.items});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Section Title
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Text(
              title,
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          // Images with Text
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: items.map((item) {
                return Padding(
                  padding: const EdgeInsets.only(right: 16.0),
                  child: Column(
                    children: [
                      // Image
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.asset(
                          item['image']!,
                          fit: BoxFit.cover,
                          width: 150,
                          height: 150,
                        ),
                      ),
                      // Text
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Text(
                          item['text']!,
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 14,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
