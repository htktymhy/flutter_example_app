import 'package:flutter/material.dart';
import '../services/hive_service.dart';

class HiveScreen extends StatefulWidget {
  const HiveScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HiveScreenState createState() => _HiveScreenState();
}

class _HiveScreenState extends State<HiveScreen> {
  String _value = '';

  @override
  void initState() {
    super.initState();
    _load();
  }

  void _load() {
    final result = HiveService.getValue('key');
    setState(() => _value = result ?? 'No value');
  }

  void _save() {
    HiveService.setValue('key', 'Hello Hive');
    _load();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Hive (NoSQL)')),
      body: Column(
        children: [
          Text('Value: $_value'),
          ElevatedButton(onPressed: _save, child: Text('Save Value')),
        ],
      ),
    );
  }
}
