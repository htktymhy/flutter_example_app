import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ResponsiveScreen extends StatelessWidget {
  const ResponsiveScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Responsive Layout', style: TextStyle(fontSize: 20.sp)),
        leading: const BackButton(),
      ),
      drawer:
          MediaQuery.of(context).size.width >= 600
              ? Drawer(
                child: ListView(
                  padding: EdgeInsets.zero,
                  children: [
                    DrawerHeader(
                      decoration: const BoxDecoration(color: Colors.blue),
                      child: Text(
                        'Menu',
                        style: TextStyle(fontSize: 22.sp, color: Colors.white),
                      ),
                    ),
                    ListTile(
                      leading: const Icon(Icons.home),
                      title: Text('Home', style: TextStyle(fontSize: 18.sp)),
                    ),
                    ListTile(
                      leading: const Icon(Icons.settings),
                      title: Text(
                        'Settings',
                        style: TextStyle(fontSize: 18.sp),
                      ),
                    ),
                  ],
                ),
              )
              : null,
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth < 600) {
            return const _MobileView();
          } else if (constraints.maxWidth < 1200) {
            return const _TabletView();
          } else {
            return const _DesktopView();
          }
        },
      ),
    );
  }
}

class ItemCard extends StatelessWidget {
  final int index;

  const ItemCard({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Colors.blue[100 * ((index % 8) + 1)],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          const Icon(Icons.widgets, size: 40, color: Colors.blueGrey),
          const SizedBox(width: 10),
          Expanded(
            child: Text(
              'Product ${index + 1}',
              style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w500),
            ),
          ),
        ],
      ),
    );
  }
}

class _MobileView extends StatelessWidget {
  const _MobileView();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(12),
      itemCount: 10,
      itemBuilder: (_, index) => ItemCard(index: index),
    );
  }
}

class _TabletView extends StatelessWidget {
  const _TabletView();

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: 10,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 15,
        mainAxisSpacing: 15,
        childAspectRatio: 3,
      ),
      itemBuilder: (_, index) => ItemCard(index: index),
    );
  }
}

class _DesktopView extends StatelessWidget {
  const _DesktopView();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 1200),
        child: GridView.builder(
          padding: const EdgeInsets.all(20),
          itemCount: 10,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
            childAspectRatio: 2,
          ),
          itemBuilder: (_, index) => ItemCard(index: index),
        ),
      ),
    );
  }
}
