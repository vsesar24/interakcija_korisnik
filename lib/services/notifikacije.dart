import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import '../screens/detalji_screen.dart';
import 'package:flutter/material.dart';

final plugin = FlutterLocalNotificationsPlugin();
final navigatorKey = GlobalKey<NavigatorState>();

Future<void> inicijaliziraj() async {
  await plugin.initialize(
    settings: const InitializationSettings(
      android: AndroidInitializationSettings('@mipmap/ic_launcher'),
    ),
    onDidReceiveNotificationResponse: obradiKlik,
  );
}


void obradiKlik(NotificationResponse odgovor) {
  navigatorKey.currentState?.push(
    MaterialPageRoute(builder: (_) => DetaljiScreen(poruka: odgovor.payload ?? '')),
  );
}

Future<void> zatraziDozvolu() async {
  await plugin
      .resolvePlatformSpecificImplementation<AndroidFlutterLocalNotificationsPlugin>()
      ?.requestNotificationsPermission();
}

Future<void> posaljiJednostavnu() async {
  await zatraziDozvolu();
  await plugin.show(
    id: 1,
    title: 'Podsjetnik',
    body: 'Sutra je rok za predaju zadaće',
    payload: 'Rok za zadaću je sutra u 23:59',
    notificationDetails: const NotificationDetails(
      android: AndroidNotificationDetails(
        'jednostavne',
        'Jednostavne obavijesti',
        importance: Importance.high,
        priority: Priority.high,
      ),
    ),
  );
}