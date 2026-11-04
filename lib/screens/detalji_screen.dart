import 'package:flutter/material.dart';

class DetaljiScreen extends StatelessWidget {
  final String poruka;
  const DetaljiScreen({super.key, required this.poruka});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Detalji obavijesti')),
      body: Center(child: Text(poruka)),
    );
  }
}