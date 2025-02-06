import 'package:flutter/material.dart';
import 'package:flutter_widgets/widgets/buttons/simple_button_widget.dart';

class DialogboxExampleScreen extends StatelessWidget {
  const DialogboxExampleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dialogbox Examples'),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 15,
            width: double.infinity,
          ),
          SimpleButtonWidget(
            label: 'Simple dialogbox',
            onPress: () {
              MyDialogboxes.simpleDialogbox(context);
            },
          ),
          const SizedBox(
            height: 15,
            width: double.infinity,
          ),
          SimpleButtonWidget(
            label: 'Alert dialogbox',
            onPress: () {
              MyDialogboxes.alertDialogbox(context);
            },
          ),
        ],
      ),
    );
  }
}

class MyDialogboxes {
  static simpleDialogbox(BuildContext context) {
    return showDialog(
        context: context,
        builder: (context) {
          return SimpleDialog(
            title: const Text('Simple Dialogbox'),
            children: <Widget>[
              SimpleDialogOption(
                onPressed: () {},
                child: const Text('Hellow World!'),
              ),
              SimpleDialogOption(
                onPressed: () {},
                child: const Text('I am learning flutter.'),
              ),
            ],
          );
        });
  }

  static alertDialogbox(BuildContext context) {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text('Alert Dialogbox'), //optional
            content: const Text('This is a alert dialog box'),
            actions: [
              TextButton(
                onPressed: () {},
                child: const Text('CANCEL'),
              ),
              TextButton(
                onPressed: () {},
                child: const Text('ACCEPT'),
              ),
            ],
          );
        });
  }
}
