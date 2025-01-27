import 'package:flutter/material.dart';
import 'package:flutter_widgets/widgets/buttons/simple_button_widget.dart';

class ButtonsExamplesScreen extends StatelessWidget {
  const ButtonsExamplesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double wt = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Buttons Examples'),
      ),
      body: Column(
        children: [
          SizedBox(
            width: wt,
            height: wt * 0.05,
          ),
          SimpleButtonWidget(
            label: 'Simple Button ',
            onPress: () {},
          ),
          SizedBox(height: wt * 0.05),
          SimpleButtonWidget(
            label: 'Disabled Button',
            disabled: true,
            onPress: () {},
          ),
          SizedBox(height: wt * 0.05),
          SimpleButtonWidget(
            backgroundColor: Colors.green,
            label: 'Green Background Button',
            onPress: () {},
          ),
          SizedBox(height: wt * 0.05),
          SimpleButtonWidget(
            foregroundColor: Colors.black,
            label: 'black foreground Button',
            onPress: () {},
          ),
          SizedBox(height: wt * 0.05),
          SimpleButtonWidget(
            width: wt * 0.5,
            label: '50% width Button',
            onPress: () {},
          ),
          SizedBox(height: wt * 0.05),
          SimpleButtonWidget(
            height: wt * 0.2,
            label: '20% height Button',
            onPress: () {},
          ),
          SizedBox(height: wt * 0.05),
          SimpleButtonWidget(
            borderRadius: 50,
            label: 'Button with 50px border radius',
            onPress: () {},
          ),
        ],
      ),
    );
  }
}
