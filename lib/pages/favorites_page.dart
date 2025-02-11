import 'package:flutter/material.dart';
import '../models/asmaul_husna.dart';

class FavoritesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Favoriten")),
      body: Center(
        child: Text("Deine favorisierten Namen"),
      ),
    );
  }
}
