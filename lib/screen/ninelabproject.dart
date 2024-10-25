import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NineLabProject extends StatefulWidget {
  const NineLabProject({super.key});

  @override
  State<NineLabProject> createState() => _NineLabProjectState();
}

class _NineLabProjectState extends State<NineLabProject> {

  DateTime? startDate;
  DateTime? endDate;
  String selectedDateRange = "No date range selected";

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text("Task 2 Rang"),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CupertinoButton.filled(
              child: Text("Select Date Range"),
              onPressed: () async {
                await _selectStartDate(context);
                if (startDate != null) {
                  await _selectEndDate(context);
                }
                if (startDate != null && endDate != null) {
                  setState(() {
                    selectedDateRange =
                    "${startDate!.day}-${startDate!.month}-${startDate!.year} to ${endDate!.day}-${endDate!.month}-${endDate!.year}";
                  });
                }
              },
            ),
            SizedBox(height: 20),
            Text(
              "Selected Date Range: $selectedDateRange",
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _selectStartDate(BuildContext context) async {
    await showCupertinoModalPopup(
      context: context,
      builder: (_) => Container(
        height: 300,
        color: CupertinoColors.systemBackground,
        child: Column(
          children: [
            SizedBox(
              height: 200,
              child: CupertinoDatePicker(
                mode: CupertinoDatePickerMode.date,
                initialDateTime: DateTime.now(),
                minimumDate: DateTime(2005),
                maximumDate: DateTime(2050),
                onDateTimeChanged: (DateTime newDate) {
                  setState(() {
                    startDate = newDate;
                  });
                },
              ),
            ),
            CupertinoButton(
              child: Text('Done'),
              onPressed: () => Navigator.of(context).pop(),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _selectEndDate(BuildContext context) async {
    await showCupertinoModalPopup(
      context: context,
      builder: (_) => Container(
        height: 300,
        color: CupertinoColors.systemBackground,
        child: Column(
          children: [
            SizedBox(
              height: 200,
              child: CupertinoDatePicker(
                mode: CupertinoDatePickerMode.date,
                initialDateTime: startDate ?? DateTime.now(),
                minimumDate: startDate,
                maximumDate: DateTime(2050),
                onDateTimeChanged: (DateTime newDate) {
                  setState(() {
                    endDate = newDate;
                  });
                },
              ),
            ),
            CupertinoButton(
              child: Text('Done'),
              onPressed: () => Navigator.of(context).pop(),
            ),
          ],
        ),
      ),
    );
  }
}
