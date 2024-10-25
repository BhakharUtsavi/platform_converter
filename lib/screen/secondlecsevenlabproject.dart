import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class SecondLecSevenLabProject extends StatefulWidget {
  const SecondLecSevenLabProject({super.key});

  @override
  State<SecondLecSevenLabProject> createState() => _SecondLecSevenLabProjectState();
}

class _SecondLecSevenLabProjectState extends State<SecondLecSevenLabProject> {
  String selectedTime = "No time selected";

  void _showCupertinoTimePicker() {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext builder) {
        return Container(
          height: MediaQuery.of(context).size.height / 3,
          child: CupertinoTimerPicker(
            mode: CupertinoTimerPickerMode.hm,
            initialTimerDuration: const Duration(hours: 0, minutes: 0),
            onTimerDurationChanged: (Duration duration) {
              setState(() {
                selectedTime = "${duration.inHours}:${duration.inMinutes % 60}";
              });
            },
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Task 7: Show Cupertino TimePicker"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: const Text("Select Time"),
              onPressed: _showCupertinoTimePicker,
            ),
            const SizedBox(height: 10),
            Text(
              "Selected Time: $selectedTime",
              style: const TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
