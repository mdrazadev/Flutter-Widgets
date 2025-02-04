import 'package:flutter/material.dart';
import 'package:flutter_widgets/widgets/bottom_bar/simple_bottom_bar_widget.dart';
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
            label: 'Bottom Navbar Examples',
            onPress: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (ctx) => const SimpleBottomBarWidget(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
