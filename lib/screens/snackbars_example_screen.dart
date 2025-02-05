import 'package:flutter/material.dart';
import 'package:flutter_widgets/widgets/buttons/simple_button_widget.dart';

class SnackbarsExampleScreen extends StatelessWidget {
  const SnackbarsExampleScreen({super.key});

  showSnackbar(
    BuildContext context,
    String label, {
    VoidCallback? onUndo,
    bool? showCloseBtn = false,
    Color? bgColor,
  }) {
    ScaffoldMessenger.of(context).clearSnackBars();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(label),
        dismissDirection: DismissDirection.horizontal,
        backgroundColor: bgColor,
        action: onUndo != null
            ? SnackBarAction(
                label: 'undo',
                onPressed: onUndo,
              )
            : null,
        showCloseIcon: showCloseBtn,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Snackbars Examples'),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 15,
            width: double.infinity,
          ),
          SimpleButtonWidget(
            label: 'Simple Snackbar',
            onPress: () {
              showSnackbar(context, "This is simple snackbar");
            },
          ),
          const SizedBox(
            height: 15,
          ),
          SimpleButtonWidget(
            label: 'Snackbar with UNDO',
            onPress: () {
              showSnackbar(
                context,
                "Snackbar with undo",
                onUndo: () {},
              );
            },
          ),
          const SizedBox(
            height: 15,
          ),
          SimpleButtonWidget(
            label: 'Snackbar with close button',
            onPress: () {
              showSnackbar(
                context,
                "Snackbar with closing btn",
                showCloseBtn: true,
              );
            },
          ),
        ],
      ),
    );
  }
}
