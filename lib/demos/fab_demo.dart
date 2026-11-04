import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class FabDemo extends StatefulWidget {
  const FabDemo({super.key});

  @override
  State<FabDemo> createState() => _FabDemoState();
}

class _FabDemoState extends State<FabDemo> {
  final biljeske = List.generate(20, (i) => 'Bilješka ${i + 1}');
  bool fabVidljiv = true;

  void dodaj() {
    setState(() => biljeske.insert(0, 'Bilješka ${biljeske.length + 1}'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('FAB')),
      body: NotificationListener<UserScrollNotification>(
        onNotification: (n) {
          if (n.direction == ScrollDirection.reverse) setState(() => fabVidljiv = false);
          if (n.direction == ScrollDirection.forward) setState(() => fabVidljiv = true);
          return false;
        },
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FloatingActionButton.small(heroTag: null, onPressed: () {}, child: const Icon(Icons.edit)),
                  FloatingActionButton(heroTag: null, onPressed: () {}, child: const Icon(Icons.edit)),
                  FloatingActionButton.large(heroTag: null, onPressed: () {}, child: const Icon(Icons.edit)),
                ],
              ),
            ),
            for (final b in biljeske) ListTile(title: Text(b)),
          ],
        ),
      ),
      floatingActionButton: fabVidljiv
          ? FloatingActionButton.extended(
              onPressed: dodaj,
              icon: const Icon(Icons.add),
              label: const Text('Nova bilješka'),
            )
          : null,
    );
  }
}