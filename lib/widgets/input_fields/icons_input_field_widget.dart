import 'package:flutter/material.dart';

class IconsInputFieldWidget extends StatelessWidget {
  const IconsInputFieldWidget({
    super.key,
    required this.controller,
    required this.label,
    this.focusNode,
    this.length,
    this.wt,
    this.radius = 8,
    this.keyboardType = TextInputType.text,
    this.prefixIcon,
    this.prefixColor = Colors.blueAccent,
    this.suffixIcon,
    this.onSuffixPress,
    this.suffixColor,
    this.errorMsg = 'required',
    this.onSubmit,
    this.onChange,
  });

  final TextEditingController controller;
  final String label;
  final FocusNode? focusNode;
  final int? length;
  final double? wt;
  final double radius;
  final TextInputType keyboardType;
  final IconData? prefixIcon;
  final Color? prefixColor;
  final IconData? suffixIcon;
  final Color? suffixColor;
  final VoidCallback? onSuffixPress;
  final String errorMsg;
  final Function(String val)? onSubmit;
  final Function(String val)? onChange;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width:  wt ?? MediaQuery.of(context).size.width,
      child: TextFormField(
        controller: controller,
        focusNode: focusNode,
        keyboardType: keyboardType,
        maxLength: length,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(radius),
          ),
          hintText: label,
          hintStyle: const TextStyle(
            fontWeight: FontWeight.w300,
          ),
          // counter: "",   // if you don't want to show counter, uncomment it.
          contentPadding: const EdgeInsets.symmetric(horizontal: 8),
          prefixIcon: prefixIcon != null
              ? Icon(
                  prefixIcon,
                  color: prefixColor,
                )
              : null,
          suffixIcon: IconButton(
            onPressed: onSuffixPress,
            icon: Icon(
              suffixIcon,
              color: suffixColor,
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(radius),
            borderSide: const BorderSide(color: Colors.red),
          ),
        ),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return errorMsg;
          }
          return null;
        },
        onFieldSubmitted: onSubmit,
        onChanged: onChange,
      ),
    );
  }
}
