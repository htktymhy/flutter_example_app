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
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  await Hive.openBox('myBox');

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812), // Base thiết kế, ví dụ iPhone X
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo App',
          theme: ThemeData(primarySwatch: Colors.blue),
          initialRoute: '/',
          routes: {
            '/': (context) => const HomeScreen(),
            '/shared_prefs': (context) => const SharedPrefsScreen(),
            '/hive': (context) => const HiveScreen(),
            '/secure_storage': (context) => const SecureStorageScreen(),
            '/sqflite': (context) => const SqfliteScreen(),
            '/firestore': (context) => const FirestoreScreen(),
            '/fcm': (context) => const FcmScreen(),
            '/responsive': (context) => const ResponsiveScreen(),
            '/animations': (context) => const AnimationScreen(),
            '/custom_paint': (context) => const CustomPaintScreen(),
          },
        );
      },
    );
  }
}
