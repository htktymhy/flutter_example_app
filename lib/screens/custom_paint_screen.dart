import 'package:flutter/material.dart';
import '../widgets/custom_paint_widget.dart';

class CustomPaintScreen extends StatelessWidget {
  const CustomPaintScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Custom Paint')),
      body: Center(child: CustomPaintWidget()),
    );
  }
}
