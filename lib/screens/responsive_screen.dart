import 'package:flutter/material.dart';
import '../utils/responsive_layout.dart';

class ResponsiveScreen extends StatelessWidget {
  const ResponsiveScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Responsive Layout'),
        leading: BackButton(), // Nút quay lại
      ),
      body: ResponsiveLayout(
        mobileBody: Center(child: Text('Mobile View')),
        tabletBody: Center(child: Text('Tablet View')),
        desktopBody: Center(child: Text('Desktop View')),
      ),
    );
  }
}
