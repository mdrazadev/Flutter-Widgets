import 'package:flutter/material.dart';
import 'package:flutter_widgets/widgets/buttons/simple_button_widget.dart';
import 'package:get/get.dart';

class SnackbarsExampleScreen extends StatelessWidget {
  const SnackbarsExampleScreen({super.key});

  /// This method is to show [uppper snackbar] to user.
  ///
  /// It accepts two arguments: [context] and [label].
  ///
  /// By default it's background color is [Grey]. You can pass any color you want
  /// to [bgColor].
  ///
  /// By default it's foreground color is [Black]. You can pass any color you want
  /// to [fgColor].
  ///
  /// If snackbar is for [warning], then you just need to pass [isWarning] as
  /// [True].
  static topSnackbar(
    String title,
    String message, {
    Color? bgColor,
    Color? fgColor,
    bool isWarning = false,
  }) {
    Get.closeCurrentSnackbar();
    Get.closeAllSnackbars();
    Get.snackbar(
      title,
      message,
      backgroundColor: isWarning ? Colors.red : bgColor,
      colorText: isWarning ? Colors.white : fgColor,
    );
  }

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
          const SizedBox(
            height: 15,
          ),
          SimpleButtonWidget(
            label: 'Simple upper snackbar',
            onPress: () {
              topSnackbar('Upper Snackbar', 'This is simple upper snackbar');
            },
          ),
          const SizedBox(
            height: 15,
          ),
          SimpleButtonWidget(
            label: 'Warning upper snackbar',
            onPress: () {
              topSnackbar(
                'Warning Snackbar',
                'This is warning snackbar',
                isWarning: true,
              );
            },
          ),
        ],
      ),
    );
  }
}
