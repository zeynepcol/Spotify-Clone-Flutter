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
                  'image': 'assets/images/dailymix1.jpg',
                  'text': 'Sanatçı 1 - Şarkı 1',
                },
                {
                  'image': 'assets/images/dailymix2.jpg',
                  'text': 'Sanatçı 2 - Şarkı 2',
                },
                {
                  'image': 'assets/images/dailymix3.jpg',
                  'text': 'Sanatçı 3 - Şarkı 3',
                },
              ],
            ),
            // En çok dinlenen programlar-Global
            SectionWithTitleAndImages(
              title: "En çok dinlenen programlar-Global",
              items: [
                {
                  'image': 'assets/images/dailymix1.jpg',
                  'text': 'Program 1',
                },
                {
                  'image': 'assets/images/dailymix1.jpg',
                  'text': 'Program 2',
                },
                {
                  'image': 'assets/images/dailymix1.jpg',
                  'text': 'Program 3',
                },
              ],
            ),
            // 2024 yılına bakış
            SectionWithTitleAndImages(
              title: "2024 yılına bakış",
              items: [
                {
                  'image': 'assets/images/dailymix1.jpg',
                  'text': 'Özet 1',
                },
                {
                  'image': 'assets/images/dailymix1.jpg',
                  'text': 'Özet 2',
                },
                {
                  'image': 'assets/images/dailymix1.jpg',
                  'text': 'Özet 3',
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
