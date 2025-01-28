import 'package:flutter/material.dart';

class ExtendedFloatingBtnWidget extends StatelessWidget {
  const ExtendedFloatingBtnWidget({
    super.key,
    required this.onPress,
    this.label = 'Add',
    this.icon = Icons.add,
    this.bgColor = Colors.blue,
    this.labelColor = Colors.white,
    this.iconColor = Colors.white,
    this.iconSize,
    this.boldLabel = true,
  });

  final String label;
  final VoidCallback onPress;
  final IconData? icon;
  final Color? bgColor;
  final Color? labelColor;
  final Color? iconColor;
  final double? iconSize;
  final bool? boldLabel;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      backgroundColor: bgColor,
      onPressed: onPress,
      label: Text(
        label,
        style: TextStyle(
          fontWeight: boldLabel! ? FontWeight.bold : null,
          fontSize: 16,
          color: labelColor,
        ),
      ),
      icon: Icon(
        icon,
        color: iconColor,
        size: iconSize,
      ),
    );
  }
}
