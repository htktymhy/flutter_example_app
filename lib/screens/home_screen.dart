import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Flutter Demo App')),
      body: ListView(
        children: [
          ListTile(
            title: Text('Shared Preferences'),
            onTap: () => Navigator.pushNamed(context, '/shared_prefs'),
          ),
          ListTile(
            title: Text('Hive'),
            onTap: () => Navigator.pushNamed(context, '/hive'),
          ),
          ListTile(
            title: Text('Secure Storage'),
            onTap: () => Navigator.pushNamed(context, '/secure_storage'),
          ),
          ListTile(
            title: Text('SQFlite'),
            onTap: () => Navigator.pushNamed(context, '/sqflite'),
          ),
          // ListTile(
          //   title: Text('Firestore'),
          //   onTap: () => Navigator.pushNamed(context, '/firestore'),
          // ),
          // ListTile(
          //   title: Text('FCM Notifications'),
          //   onTap: () => Navigator.pushNamed(context, '/fcm'),
          // ),
          ListTile(
            title: Text('Responsive Layout'),
            onTap: () => Navigator.pushNamed(context, '/responsive'),
          ),
          ListTile(
            title: Text('Animations'),
            onTap: () => Navigator.pushNamed(context, '/animations'),
          ),
          ListTile(
            title: Text('Custom Paint'),
            onTap: () => Navigator.pushNamed(context, '/custom_paint'),
          ),
        ],
      ),
    );
  }
}
