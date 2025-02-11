import 'package:flutter/material.dart';
import '../models/asmaul_husna.dart';

class HomePage extends StatelessWidget {
  final AsmaulHusna todayName = AsmaulHusna(
    id: 1,
    nameArabic: "الرَّحْمَنُ",
    nameTranscription: "ar-Raḥmān",
    meaning: "Der Allerbarmer",
    audioFile: "ar_rahman.mp3",
    calligraphyImage: "ar_rahman.png",
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Asmaul Husna")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(todayName.nameArabic, style: TextStyle(fontSize: 48)),
            Text(todayName.nameTranscription, style: TextStyle(fontSize: 24)),
            Text(todayName.meaning, style: TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}
