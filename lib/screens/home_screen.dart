import 'package:flutter/material.dart';
import '../models/demo.dart';

final demos = <Demo>[];

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Interakcija s korisnikom')),
      body: ListView(
        children: [
          for (final demo in demos)
            ListTile(
              leading: Icon(demo.ikona),
              title: Text(demo.naslov),
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: demo.ekran),
              ),
            ),
        ],
      ),
    );
  }
}