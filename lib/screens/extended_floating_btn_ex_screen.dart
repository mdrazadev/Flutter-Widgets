import 'package:flutter/material.dart';
import 'package:flutter_widgets/widgets/buttons/extended_floating_btn_widget.dart';

class ExtendedFloatingBtnExScreen extends StatefulWidget {
  const ExtendedFloatingBtnExScreen({super.key});

  @override
  State<ExtendedFloatingBtnExScreen> createState() =>
      _ExtendedFloatingBtnExScreenState();
}

class _ExtendedFloatingBtnExScreenState
    extends State<ExtendedFloatingBtnExScreen> {
  int index = 1;

  changeIndex() {
    setState(() {
      if (index < 8) {
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
        title: const Text('Extended Floating Buttons'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Text('Press the below button'),
            SizedBox(height: wt * 0.02),
            SizedBox(width: wt, height: wt * 0.05),
            const Text('Simple Extended Floating button'),
            SizedBox(height: wt * 0.02),
            if (index == 1)
              ExtendedFloatingBtnWidget(
                onPress: () {
                  changeIndex();
                },
              ),
            SizedBox(width: wt, height: wt * 0.05),
            const Text('Extended Floating button with custom label'),
            SizedBox(height: wt * 0.02),
            if (index == 2)
              ExtendedFloatingBtnWidget(
                onPress: () {
                  changeIndex();
                },
                label: 'Label',
              ),
            SizedBox(width: wt, height: wt * 0.05),
            const Text('Extended Floating button with custom icon'),
            SizedBox(height: wt * 0.02),
            if (index == 3)
              ExtendedFloatingBtnWidget(
                onPress: () {
                  changeIndex();
                },
                icon: Icons.send,
              ),
            SizedBox(width: wt, height: wt * 0.05),
            const Text('Button with custom background'),
            SizedBox(height: wt * 0.02),
            if (index == 4)
              ExtendedFloatingBtnWidget(
                onPress: () {
                  changeIndex();
                },
                bgColor: Colors.green,
              ),
            SizedBox(width: wt, height: wt * 0.05),
            const Text('Button with custom icon color'),
            SizedBox(height: wt * 0.02),
            if (index == 5)
              ExtendedFloatingBtnWidget(
                onPress: () {
                  changeIndex();
                },
                iconColor: Colors.red,
              ),
            SizedBox(width: wt, height: wt * 0.05),
            const Text('Button with custom label color'),
            SizedBox(height: wt * 0.02),
            if (index == 6)
              ExtendedFloatingBtnWidget(
                onPress: () {
                  changeIndex();
                },
                labelColor: Colors.red,
              ),
            SizedBox(width: wt, height: wt * 0.05),
            const Text('Button with custom icon size'),
            SizedBox(height: wt * 0.02),
            if (index == 7)
              ExtendedFloatingBtnWidget(
                onPress: () {
                  changeIndex();
                },
                iconSize: 15,
              ),
            SizedBox(width: wt, height: wt * 0.05),
            const Text('Button with custom label(unbold)'),
            SizedBox(height: wt * 0.02),
            if (index == 8)
              ExtendedFloatingBtnWidget(
                onPress: () {
                  changeIndex();
                },
                boldLabel: false,
              ),
            SizedBox(width: wt, height: wt * 0.05),
          ],
        ),
      ),
    );
  }
}
