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
          const SizedBox(
            height: 15,
            width: double.infinity,
          ),
          SimpleButtonWidget(
            label: 'Custom dialogbox',
            onPress: () {
              MyDialogboxes.customDialogbox(
                context,
                const Text('This is a custom dialog box.'),
                isDismissible: false,
              );
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
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('CANCEL'),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('ACCEPT'),
              ),
            ],
          );
        });
  }

  static customDialogbox(BuildContext context, Widget content,
      {bool isDismissible = true}) {
    return showDialog(
        context: context,
        barrierDismissible: isDismissible,
        builder: (context) {
          return AlertDialog(
            title: const Text('Custom Dialogbox'), //optional
            content: content,
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('CANCEL'),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('ACCEPT'),
              ),
            ],
          );
        });
  }
}
