import 'package:flutter/material.dart';

class SimpleButtonWidget extends StatelessWidget {
  const SimpleButtonWidget({
    super.key,
    required this.label,
    required this.onPress,
    this.width,
    this.height,
    this.borderRadius = 8,
    this.backgroundColor = Colors.blue,
    this.foregroundColor = Colors.white,
    this.disabled = false,
  });

  final String label;
  final Function() onPress;
  final double? width;
  final double? height;
  final double? borderRadius;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final bool? disabled;

  @override
  Widget build(BuildContext context) {
    double wt = MediaQuery.of(context).size.width;
    double ht = MediaQuery.of(context).size.height;
    return SizedBox(
      width: width ?? (wt * 0.9),
      height: height ?? (ht * 0.05),
      child: ElevatedButton(
        onPressed: disabled! ? null : onPress,
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          foregroundColor: foregroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius!),
          ),
        ),
        child: Text(label),
      ),
    );
  }
}
