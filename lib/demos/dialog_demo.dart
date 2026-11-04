import 'package:flutter/material.dart';

class DialogDemo extends StatefulWidget {
  const DialogDemo({super.key});

  @override
  State<DialogDemo> createState() => _DialogDemoState();
}

class _DialogDemoState extends State<DialogDemo> {
  String rezultat = 'Još nijedan dijalog nije otvoren';

  Future<void> potvrda() async {
    final obrisi = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Obrisati bilješku?'),
        content: const Text('Bilješka će biti trajno obrisana.'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context, false),
            child: const Text('Odustani'),
          ),
          TextButton(
            onPressed: () => Navigator.pop(context, true),
            style: TextButton.styleFrom(foregroundColor: Theme.of(context).colorScheme.error),
            child: const Text('Obriši'),
          ),
        ],
      ),
    );
    setState(() => rezultat = obrisi == true ? 'Bilješka obrisana' : 'Brisanje otkazano');
  }


   Future<void> izbor() async {
    final tema = await showDialog<String>(
      context: context,
      builder: (context) => SimpleDialog(
        title: const Text('Odaberi temu'),
        children: [
          for (final opcija in ['Svijetla', 'Tamna', 'Sustavna'])
            SimpleDialogOption(
              onPressed: () => Navigator.pop(context, opcija),
              child: Text(opcija),
            ),
        ],
      ),
    );
    if (tema != null) setState(() => rezultat = 'Odabrana tema: $tema');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Dijalozi')),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          spacing: 12,
          children: [
            Text(rezultat),
            FilledButton(onPressed: potvrda, child: const Text('Potvrda brisanja')),
            FilledButton(onPressed: izbor, child: const Text('Izbor opcije')),
          ],
        ),
      ),
    );
  }
}