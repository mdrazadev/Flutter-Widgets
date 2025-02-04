import 'package:flutter/material.dart';
import 'package:flutter_widgets/screens/bottom_bars/custom_bottom_bar_screen.dart';
import 'package:flutter_widgets/screens/bottom_bars/simple_bottom_bar_screen.dart';
import 'package:flutter_widgets/widgets/buttons/simple_button_widget.dart';

class BottomBarListScreen extends StatelessWidget {
  const BottomBarListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bottom Bar examples'),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 15,
            width: width,
          ),
          SimpleButtonWidget(
            label: 'Simple Bottom Navbar',
            onPress: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (ctx) => const SimpleBottomBarScreen(),
                ),
              );
            },
          ),
          SizedBox(
            height: 15,
            width: width,
          ),
          SimpleButtonWidget(
            label: 'Custom Bottom Navbar',
            onPress: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (ctx) => const CustomBottomBarScreen(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
