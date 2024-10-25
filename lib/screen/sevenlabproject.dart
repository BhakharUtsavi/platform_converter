import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SevenLabProject extends StatefulWidget {
  const SevenLabProject({super.key});

  @override
  State<SevenLabProject> createState() => _SevenLabProjectState();
}

class _SevenLabProjectState extends State<SevenLabProject> {

  DateTime? _pickedDate;
  String selectedDate = "No date selected";

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('Cupertino Date Picker'),
      ),
      child: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              SizedBox(
                height: 250,
                child: CupertinoDatePicker(
                  mode: CupertinoDatePickerMode.date,
                  initialDateTime: _pickedDate ?? DateTime.now(),
                  minimumDate: DateTime(2005),
                  maximumDate: DateTime(2050),
                  onDateTimeChanged: (DateTime newDate) {
                    setState(() {
                      _pickedDate = newDate;
                      selectedDate =
                      "${newDate.day}-${newDate.month}-${newDate.year}";
                    });
                  },
                ),
              ),
              const SizedBox(height: 20),
              // Display the selected date
              Text(
                "Selected Date: $selectedDate",
                style: TextStyle(fontSize: 18),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
