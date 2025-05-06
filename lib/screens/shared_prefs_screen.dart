import 'package:flutter/material.dart';
import '../services/shared_prefs_service.dart';

class SharedPrefsScreen extends StatefulWidget {
  const SharedPrefsScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SharedPrefsScreenState createState() => _SharedPrefsScreenState();
}

class _SharedPrefsScreenState extends State<SharedPrefsScreen> {
  String _value = '';

  @override
  void initState() {
    super.initState();
    _load();
  }

  void _load() async {
    final result = await SharedPrefsService.getValue('key');
    setState(() => _value = result ?? 'No value');
  }

  void _save() async {
    await SharedPrefsService.setValue('key', 'Hello Shared Prefs');
    _load();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Shared Preferences')),
      body: Column(
        children: [
          Text('Value: $_value'),
          ElevatedButton(onPressed: _save, child: Text('Save Value')),
        ],
      ),
    );
  }
}
