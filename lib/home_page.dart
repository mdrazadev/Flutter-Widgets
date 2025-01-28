import 'package:flutter/material.dart';
import 'package:flutter_widgets/screens/buttons_examples_screen.dart';
import 'package:flutter_widgets/screens/floating_button_examples_screen.dart';
import 'package:flutter_widgets/screens/simple_input_field_screen.dart';
import 'package:flutter_widgets/widgets/buttons/simple_button_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Widgets'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(
            width: width,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (ctx) => SimpleInputFieldScreen(),
                ),
              );
            },
            child: const Text('Simple Input Field'),
          ),
          const SizedBox(
            height: 15,
          ),
          SimpleButtonWidget(
            label: 'Button Examples',
            width: width * 0.4,
            onPress: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (ctx) => const ButtonsExamplesScreen(),
                ),
              );
            },
          ),
          const SizedBox(
            height: 15,
          ),
          SimpleButtonWidget(
            label: 'Floating Button Examples',
            width: width * 0.5,
            onPress: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (ctx) => const FloatingButtonExamplesScreen(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
