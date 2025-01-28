import 'package:flutter/material.dart';
import 'package:flutter_widgets/widgets/buttons/simple_floating_btn_widget.dart';

class FloatingButtonExamplesScreen extends StatefulWidget {
  const FloatingButtonExamplesScreen({super.key});

  @override
  State<FloatingButtonExamplesScreen> createState() =>
      _FloatingButtonExamplesScreenState();
}

class _FloatingButtonExamplesScreenState
    extends State<FloatingButtonExamplesScreen> {
  int index = 1;

  changeIndex() {
    setState(() {
      if (index < 4) {
        index++;
      } else {
        index = 1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    double wt = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Floating Buttons'),
      ),
      body: Column(
        children: [
          const Text('Press button'),
          SizedBox(height: wt * 0.02),
          SizedBox(width: wt, height: wt * 0.05),
          const Text('Simple Floating button'),
          SizedBox(height: wt * 0.02),
          if (index == 1)
            SimpleFloatingBtnWidget(
              onPress: () {
                changeIndex();
              },
            ),
          SizedBox(height: wt * 0.05),
          const Text('Floating button with red background'),
          SizedBox(height: wt * 0.02),
          if (index == 2)
            SimpleFloatingBtnWidget(
              onPress: () {
                changeIndex();
              },
              bgColor: Colors.redAccent,
            ),
          SizedBox(height: wt * 0.05),
          const Text('Floating button with red foreground'),
          SizedBox(height: wt * 0.02),
          if (index == 3)
            SimpleFloatingBtnWidget(
              onPress: () {
                changeIndex();
              },
              fgColor: Colors.red,
            ),
          SizedBox(height: wt * 0.05),
          const Text('Floating button with icon'),
          SizedBox(height: wt * 0.02),
          if (index == 4)
            SimpleFloatingBtnWidget(
              onPress: () {
                changeIndex();
              },
              icon: Icons.send,
            ),
        ],
      ),
    );
  }
}
