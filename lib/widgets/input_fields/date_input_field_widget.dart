import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateInputFieldWidget extends StatelessWidget {
  /// This widget is for selecting [DATE]. It accepts two required arguments:
  /// [CONTROLLER] and [LABEL].
  ///
  /// To select a date, just [TAP] on the field.
  ///
  /// To clear date, [LONG PRESS] on the field.
  const DateInputFieldWidget({
    super.key,
    required this.controller,
    required this.label,
    this.focusNode,
    this.wt,
    this.radius = 8,
    this.prefixIcon,
    this.prefixColor = Colors.blueAccent,
    this.suffixIcon,
    this.onSuffixPress,
    this.suffixColor,
    this.errorMsg = 'required',
  });

  final TextEditingController controller;
  final String label;
  final FocusNode? focusNode;
  final double? wt;
  final double radius;
  final IconData? prefixIcon;
  final Color? prefixColor;
  final IconData? suffixIcon;
  final Color? suffixColor;
  final VoidCallback? onSuffixPress;
  final String errorMsg;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        controller.text = await selectDate(context, controller.text);
      },
      onLongPress: () => controller.clear(),
      child: AbsorbPointer(
        child: SizedBox(
          width: wt ?? MediaQuery.of(context).size.width,
          child: TextFormField(
            controller: controller,
            focusNode: focusNode,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(radius),
              ),
              hintText: label,
              hintStyle: const TextStyle(
                fontWeight: FontWeight.w300,
              ),
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
          ),
        ),
      ),
    );
  }

  /// This method is to choose [DATE] from calendar.
  /// It accepts two required arguments: [context] and [initialDt].
  ///
  /// It open a calendar, so that user can choose a date. If user selects
  /// a date, then it [returns] the [selected date], otherwise it returns
  /// [initialDt].
  ///
  /// You can also pass [starting] range or [ending] range.
  Future<String> selectDate(
    BuildContext context,
    String initialDt, {
    int? startingYear,
    int? startingMonth,
    int? startingDay,
    int? endingYear,
    int? endingMonth,
    int? endingDay,
  }) async {
    DateTime selectedDt = DateTime.now();

    if (initialDt.isNotEmpty) {
      selectedDt = DateFormat("dd-MM-yyyy").parse(initialDt);
    }

    final pickedDate = await showDatePicker(
      context: context,
      firstDate: DateTime(
        startingYear ?? DateTime.now().year,
        startingMonth ?? 1,
        startingDay ?? 1,
      ),
      lastDate: DateTime(
        endingYear ?? DateTime.now().year + 2,
        endingMonth ?? 12,
        endingDay ?? 31,
      ),
      initialDate: selectedDt,
    );

    if (pickedDate != null) {
      initialDt = DateFormat('dd-MM-yyyy').format(pickedDate);
    }

    return initialDt;
  }
}
