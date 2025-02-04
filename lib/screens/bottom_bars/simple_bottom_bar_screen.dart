import 'package:flutter/material.dart';

class SimpleBottomBarScreen extends StatefulWidget {
  const SimpleBottomBarScreen({super.key});

  @override
  State<SimpleBottomBarScreen> createState() => _SimpleBottomBarScreenState();
}

class _SimpleBottomBarScreenState extends State<SimpleBottomBarScreen> {
  int currentIndex = 0;
  List<Widget> pages = const [
    Center(child: Text('First Page')),
    Center(child: Text('Second Page')),
    Center(child: Text('Third Page')),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Simple Bottombar'),
        centerTitle: true,
      ),
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.widgets_outlined),
            label: 'First',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.widgets_outlined),
            label: 'Second',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.widgets_outlined),
            label: 'Third',
          ),
        ],
      ),
    );
  }
}
