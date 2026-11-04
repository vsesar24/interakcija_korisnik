import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'services/notifikacije.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await inicijaliziraj();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Interakcija s korisnikom',
      debugShowCheckedModeBanner: false,
      navigatorKey: navigatorKey,
      theme: ThemeData(colorSchemeSeed: Colors.indigo),
      home: const HomeScreen(),
    );
  }
}