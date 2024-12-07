import 'package:flutter/material.dart';

class SongPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Arka plan resmi ve şeffaflık ayarı
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/song2.jpg'),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.7), // Opacity for transparency
                  BlendMode.darken, // Blending mode for better visibility
                ),
              ),
            ),
          ),
          // Üst kısım kontrol ikonları
          Positioned(
            top: 40,
            left: 16,
            child: IconButton(
              icon: Icon(Icons.keyboard_arrow_down, color: Colors.white, size: 30),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
          Positioned(
            top: 40,
            right: 16,
            child: IconButton(
              icon: Icon(Icons.more_vert, color: Colors.white, size: 30),
              onPressed: () {},
            ),
          ),
          // Başlık ve oynatma bilgisi
          Positioned(
            top: 80,
            left: 0,
            right: 0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "ÇALMA LİSTESİNDEN ÇALIYOR",
                  style: TextStyle(color: Colors.white70, fontSize: 16, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 8), // Boşluk artırıldı
                Text(
                  "This Is Cream",
                  style: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          // Şarkı bilgileri
          Positioned(
            bottom: 180, // Alt konumu artırıldı
            left: 16,
            right: 16,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12), // Daha fazla iç boşluk
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.2), // Hafif siyah arka plan
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(
                      'assets/images/song2.jpg',
                      width: 60,
                      height: 60,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(width: 20), // Yan boşluk artırıldı
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Sunshine of Your Love",
                        style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 8), // Yazılar arasında boşluk artırıldı
                      Text(
                        "Cream",
                        style: TextStyle(color: Colors.white70, fontSize: 16),
                      ),
                    ],
                  ),
                  Spacer(),
                  IconButton(
                    icon: Icon(Icons.add, color: Colors.white, size: 30),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ),
          // Slider ve süre bilgisi
          Positioned(
            bottom: 120, // Alt konumu artırıldı
            left: 16,
            right: 16,
            child: Column(
              children: [
                Slider(
                  value: 0.5,
                  onChanged: (value) {},
                  activeColor: Colors.white,
                  inactiveColor: Colors.white54,
                ),
                // Süre bilgisi slider'a iyice yaklaştırıldı
                Padding(
                  padding: const EdgeInsets.only(top: 0), // Boşluk tamamen kaldırıldı
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("0:00", style: TextStyle(color: Colors.white70, fontSize: 14)),
                      Text("4:11", style: TextStyle(color: Colors.white70, fontSize: 14)),
                    ],
                  ),
                ),
              ],
            ),
          ),
          // Alt kontrol paneli
          Positioned(
            bottom: 40,
            left: 16,
            right: 16,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12), // Daha fazla iç boşluk
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.1), // Yarı saydam arka plan
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.shuffle, color: Colors.green, size: 30),
                  Icon(Icons.skip_previous, color: Colors.white, size: 40),
                  Icon(Icons.play_circle_filled, color: Colors.white, size: 60),
                  Icon(Icons.skip_next, color: Colors.white, size: 40),
                  Icon(Icons.timer, color: Colors.white, size: 30),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
