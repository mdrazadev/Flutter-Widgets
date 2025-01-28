import 'package:flutter/material.dart';
import 'package:flutter_widgets/widgets/buttons/simple_floating_btn_widget.dart';

class FloatingButtonExamplesScreen extends StatelessWidget {
  const FloatingButtonExamplesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double wt = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Floating Buttons'),
      ),
      body: Column(
        children: [
          SizedBox(width: wt, height: wt * 0.05),
          const Text('Simple Floating button'),
          SizedBox(height: wt * 0.02),
          SimpleFloatingBtnWidget(
            onPress: () {},
          ),
          SizedBox(height: wt * 0.05),
          const Text('Floating button with red background'),
          SizedBox(height: wt * 0.02),
          SimpleFloatingBtnWidget(
            onPress: () {},
            bgColor: Colors.redAccent,
          ),
          SizedBox(height: wt * 0.05),
          const Text('Floating button with red foreground'),
          SizedBox(height: wt * 0.02),
          SimpleFloatingBtnWidget(
            onPress: () {},
            fgColor: Colors.red,
          ),
          SizedBox(height: wt * 0.05),
          const Text('Floating button with icon'),
          SizedBox(height: wt * 0.02),
          SimpleFloatingBtnWidget(
            onPress: () {},
            icon: Icons.send,
          ),
        ],
      ),
    );
  }
}
