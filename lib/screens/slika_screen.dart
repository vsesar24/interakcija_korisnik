import 'package:flutter/material.dart';

class SlikaScreen extends StatelessWidget {
  const SlikaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(backgroundColor: Colors.black, foregroundColor: Colors.white),
      body: Center(child: InteractiveViewer(child: Image.asset('assets/slika.png'))),
    );
  }
}