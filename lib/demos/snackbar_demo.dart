import 'package:flutter/material.dart';

class SnackbarDemo extends StatefulWidget {
  const SnackbarDemo({super.key});

  @override
  State<SnackbarDemo> createState() => _SnackbarDemoState();
}

class _SnackbarDemoState extends State<SnackbarDemo> {
  final stavke = ['Kupiti mlijeko', 'Predati zadaću', 'Nazvati mamu'];

  void obicnaPoruka() {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Ovo je obični snackbar'),
        behavior: SnackBarBehavior.floating,
      ),
    );
  }

  void obrisi(int index) {
    final obrisana = stavke[index];
    setState(() => stavke.removeAt(index));

    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(
        SnackBar(
          content: Text('Obrisano: $obrisana'),
          action: SnackBarAction(
            label: 'Poništi',
            onPressed: () => setState(() => stavke.insert(index, obrisana)),
          ),
        ),
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('SnackBar')),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: FilledButton(
              onPressed: obicnaPoruka,
              child: const Text('Prikaži snackbar'),
            ),
          ),
          for (var i = 0; i < stavke.length; i++)
            ListTile(
              title: Text(stavke[i]),
              trailing: IconButton(
                icon: const Icon(Icons.delete_outline),
                onPressed: () => obrisi(i),
              ),
            ),
        ],
      ),
    );
  }
}