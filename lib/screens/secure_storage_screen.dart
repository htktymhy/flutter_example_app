import 'package:flutter/material.dart';
import '../services/secure_storage_service.dart';

class SecureStorageScreen extends StatefulWidget {
  const SecureStorageScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SecureStorageScreenState createState() => _SecureStorageScreenState();
}

class _SecureStorageScreenState extends State<SecureStorageScreen> {
  String _value = '';

  @override
  void initState() {
    super.initState();
    _load();
  }

  Future<void> _load() async {
    final result = await SecureStorageService.getValue('secureKey');
    setState(() => _value = result ?? 'No value');
  }

  Future<void> _save() async {
    await SecureStorageService.setValue('secureKey', 'Hello Secure');
    _load();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Secure Storage')),
      body: Column(
        children: [
          Text('Value: $_value'),
          ElevatedButton(onPressed: _save, child: Text('Save Value')),
        ],
      ),
    );
  }
}
