import 'package:firebase_messaging/firebase_messaging.dart';

class FcmService {
  static Future<String?> getToken() async {
    FirebaseMessaging messaging = FirebaseMessaging.instance;
    return await messaging.getToken();
  }
}
