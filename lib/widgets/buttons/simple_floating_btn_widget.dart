import 'package:flutter/material.dart';

class SimpleFloatingBtnWidget extends StatelessWidget {
  const SimpleFloatingBtnWidget({
    super.key,
    required this.onPress,
    this.icon = Icons.add,
    this.bgColor = Colors.blue,
    this.fgColor = Colors.white,
  });

  final VoidCallback onPress;
  final IconData? icon;
  final Color? bgColor;
  final Color? fgColor;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: onPress,
      backgroundColor: bgColor,
      child: Icon(
        icon,
        color: fgColor,
      ),
    );
  }
}
