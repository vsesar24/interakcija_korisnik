import 'package:flutter/material.dart';
import '../services/notifikacije.dart';

class NotifikacijeDemo extends StatelessWidget {
  const NotifikacijeDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Notifikacije')),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          spacing: 12,
          children: [
            FilledButton(onPressed: posaljiJednostavnu, child: const Text('Jednostavna notifikacija')),
            FilledButton(onPressed: posaljiSlozenu, child: const Text('Notifikacija sa slikom')),
          ],
        ),
      ),
    );
  }
}