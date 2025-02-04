import 'package:flutter/material.dart';

class CircularBottomBarScreen extends StatefulWidget {
  const CircularBottomBarScreen({super.key});

  @override
  State<CircularBottomBarScreen> createState() =>
      _CircularBottomBarScreenState();
}

class _CircularBottomBarScreenState extends State<CircularBottomBarScreen> {
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
        title: const Text('Custom Bottombar'),
        centerTitle: true,
      ),
      body: pages[currentIndex],
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.vertical(top: Radius.circular(28)),
        child: BottomNavigationBar(
          currentIndex: currentIndex,
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.grey,
          backgroundColor: Colors.greenAccent,
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
      ),
    );
  }
}
