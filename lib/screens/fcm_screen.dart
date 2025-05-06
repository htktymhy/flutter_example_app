import 'package:flutter/material.dart';
import '../services/fcm_service.dart';

class FcmScreen extends StatefulWidget {
  const FcmScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _FcmScreenState createState() => _FcmScreenState();
}

class _FcmScreenState extends State<FcmScreen> {
  String _token = '';

  @override
  void initState() {
    super.initState();
    _initFCM();
  }

  void _initFCM() async {
    final token = await FcmService.getToken();
    setState(() {
      _token = token ?? 'No token';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('FCM Notifications')),
      body: Center(child: Text('FCM Token: $_token')),
    );
  }
}
