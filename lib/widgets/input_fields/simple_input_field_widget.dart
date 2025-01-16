import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SimpleInputFieldWidget extends StatelessWidget {
  const SimpleInputFieldWidget({
    super.key,
    this.labelText,
    required this.controller,
    this.hintText,
    this.validateString,
    this.focusNode,
    this.isPassword,
    this.obscureCharacter,
    this.onFieldSubmit,
    this.keyboardType = TextInputType.text,
    this.maxLength,
    this.maxLines = 1,
    this.validateField = true,
    this.width,
    this.height,
    this.onChange,
    this.onTap,
    this.digitsOnly,
    this.stringOnly,
    this.doubleOnly,
    this.removeBorder = false,
  });

  final String? labelText;
  final TextEditingController controller;
  final String? hintText;
  final String? validateString;
  final FocusNode? focusNode;
  final bool? isPassword;
  final String? obscureCharacter;
  final Function(String val)? onFieldSubmit;
  final TextInputType? keyboardType;
  final int? maxLength;
  final int? maxLines;
  final bool? validateField;
  final double? width;
  final double? height;
  final Function(String val)? onChange;
  final Function()? onTap;
  final bool? digitsOnly;
  final bool? stringOnly;
  final bool? doubleOnly;
  final bool? removeBorder;

  @override
  Widget build(BuildContext context) {
    double wt = MediaQuery.of(context).size.width;
    double ht = MediaQuery.of(context).size.height;
    // return SizedBox(
    //   width: width,
    //   height: height,
    //   child: TextFormField(
    //     style: const TextStyle(
    //       fontSize: 16.0,
    //       color: Color.fromARGB(255, 17, 17, 17),
    //       fontWeight: FontWeight.w400,
    //     ),
    //     controller: controller,
    //     focusNode: focusNode,
    //     obscureText: isPassword ?? false,
    //     obscuringCharacter: obscureCharacter ?? '*',
    //     keyboardType: keyboardType,
    //     onFieldSubmitted: onFieldSubmit,
    //     inputFormatters: [
    //       if (stringOnly == true)
    //         FilteringTextInputFormatter.allow(
    //           RegExp("[a-z A-Z]"),
    //         ),
    //       if (digitsOnly == true) FilteringTextInputFormatter.digitsOnly,
    //     ],
    //     onTap: onTap,
    //     maxLength: maxLength,
    //     maxLines: maxLines,
    //     onChanged: onChange,
    //     validator: validateField!
    //         ? (value) {
    //             if (value!.isEmpty) {
    //               return validateString ?? 'required';
    //             }
    //             return null;
    //           }
    //         : null,
    //     decoration: InputDecoration(
    //       labelText: labelText,
    //       contentPadding: const EdgeInsets.symmetric(horizontal: 8),
    //       alignLabelWithHint: true,
    //       hintText: hintText,
    //       counterText: '',
    //       border: const OutlineInputBorder(),
    //       hintStyle: const TextStyle(
    //         fontSize: 16.0,
    //         color: Color.fromARGB(255, 17, 17, 17),
    //         fontWeight: FontWeight.w400,
    //       ),
    //       labelStyle: const TextStyle(
    //         fontSize: 16.0,
    //         color: Color.fromARGB(255, 17, 17, 17),
    //         fontWeight: FontWeight.w400,
    //       ),
    //     ),
    //   ),
    // );
    return SizedBox(
      width: width ?? wt,
      height: height ?? (ht * 0.06),
      child: TextFormField(
        style: const TextStyle(
          fontSize: 16.0,
          color: Color.fromARGB(255, 17, 17, 17),
          fontWeight: FontWeight.w400,
        ),
        controller: controller,
        focusNode: focusNode,
        obscureText: isPassword ?? false,
        obscuringCharacter: obscureCharacter ?? '*',
        keyboardType: keyboardType,
        onFieldSubmitted: onFieldSubmit,
        inputFormatters: [
          if (stringOnly == true)
            FilteringTextInputFormatter.allow(RegExp("[a-z A-Z]")),
          if (digitsOnly == true) FilteringTextInputFormatter.digitsOnly,
          if (doubleOnly == true)
            FilteringTextInputFormatter.allow(RegExp(r'^\d+\.?\d{0,4}')),
        ],
        onTap: onTap,
        maxLength: maxLength,
        maxLines: maxLines,
        onChanged: onChange,
        validator: validateField!
            ? (value) {
                if (value!.isEmpty) {
                  return validateString ?? 'required';
                }
                return null;
              }
            : null,
        decoration: InputDecoration(
          labelText: labelText,
          contentPadding: const EdgeInsets.symmetric(horizontal: 8),
          alignLabelWithHint: true,
          hintText: hintText,
          // counterText: '',
          border: removeBorder! ? null : const OutlineInputBorder(),
          hintStyle: const TextStyle(
            fontSize: 16.0,
            color: Color.fromARGB(255, 17, 17, 17),
            fontWeight: FontWeight.w400,
          ),
          labelStyle: const TextStyle(
            fontSize: 16.0,
            color: Color.fromARGB(255, 17, 17, 17),
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
