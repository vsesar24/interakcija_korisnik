import 'package:flutter/material.dart';
import '../models/demo.dart';
import '../demos/toast_demo.dart';
import '../demos/snackbar_demo.dart';

final demos = <Demo>[
  Demo('Toast', Icons.chat_bubble_outline, (_) => const ToastDemo()),
  Demo('SnackBar', Icons.info_outline, (_) => const SnackbarDemo()),
];

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