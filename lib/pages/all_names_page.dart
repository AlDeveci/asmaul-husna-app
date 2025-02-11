import 'package:flutter/material.dart';
import '../models/asmaul_husna.dart';

class AllNamesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Alle Namen")),
      body: ListView.builder(
        itemCount: 99, // Beispiel: 99 Namen
        itemBuilder: (context, index) => ListTile(
          title: Text("Name ${index + 1}"),
          onTap: () {
            // Navigiere zur Detailseite
          },
        ),
      ),
    );
  }
}
