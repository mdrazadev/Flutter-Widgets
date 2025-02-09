import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CalendarExampleScreen extends StatefulWidget {
  const CalendarExampleScreen({super.key});

  @override
  State<CalendarExampleScreen> createState() => _CalendarExampleScreenState();
}

class _CalendarExampleScreenState extends State<CalendarExampleScreen> {
  String selectedDate = '';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calendar Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(selectedDate.isEmpty ? 'Choose a date' : selectedDate),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () async {
                selectedDate = await selectDate(
                  context,
                  selectedDate,
                );
                setState(() {});
              },
              child: const Text('choose date'),
            ),
          ],
        ),
      ),
    );
  }
}
