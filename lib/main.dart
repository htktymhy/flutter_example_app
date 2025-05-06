import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'screens/home_screen.dart';
import 'screens/shared_prefs_screen.dart';
import 'screens/hive_screen.dart';
import 'screens/secure_storage_screen.dart';
import 'screens/sqflite_screen.dart';
import 'screens/firestore_screen.dart';
import 'screens/fcm_screen.dart';
import 'screens/responsive_screen.dart';
import 'screens/animation_screen.dart';
import 'screens/custom_paint_screen.dart';
// import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  await Hive.initFlutter();
  await Hive.openBox('myBox');

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo App',
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/shared_prefs': (context) => SharedPrefsScreen(),
        '/hive': (context) => HiveScreen(),
        '/secure_storage': (context) => SecureStorageScreen(),
        '/sqflite': (context) => SqfliteScreen(),
        '/firestore': (context) => FirestoreScreen(),
        '/fcm': (context) => FcmScreen(),
        '/responsive': (context) => ResponsiveScreen(),
        '/animations': (context) => AnimationScreen(),
        '/custom_paint': (context) => CustomPaintScreen(),
      },
    );
  }
}
