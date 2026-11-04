import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ToastDemo extends StatelessWidget {
  const ToastDemo({super.key});

  void prikaziToast(String poruka, Toast trajanje) {
    Fluttertoast.cancel();
    Fluttertoast.showToast(msg: poruka, toastLength: trajanje);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Toast')),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          spacing: 12,
          children: [
            FilledButton(
              onPressed: () => prikaziToast('Spremljeno', Toast.LENGTH_SHORT),
              child: const Text('Kratki toast'),
            ),
            FilledButton(
              onPressed: () => prikaziToast('Podaci se sinkroniziraju u pozadini', Toast.LENGTH_LONG),
              child: const Text('Dugi toast'),
            ),
            
            
          ],
        ),
      ),
    );
  }
}