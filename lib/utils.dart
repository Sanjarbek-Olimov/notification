import 'dart:math';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class Utils {
  static Future<void> showLocalNotification(String title, String body) async {
    var android = const AndroidNotificationDetails("channelId", "channelName",
        channelDescription: "channelDescription");
    var iOS = const IOSNotificationDetails();
    var platform = NotificationDetails(android: android, iOS: iOS);

    int id = Random().nextInt((pow(2, 31) - 1).toInt());
    await FlutterLocalNotificationsPlugin().show(id, title, body, platform);
  }
}
