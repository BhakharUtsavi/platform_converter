import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class SecondLecEightLabProject extends StatefulWidget {
  const SecondLecEightLabProject({super.key});

  @override
  State<SecondLecEightLabProject> createState() => _SecondLecEightLabProjectState();
}

class _SecondLecEightLabProjectState extends State<SecondLecEightLabProject> {

  String selectedTime = "No time selected";
  String validationMessage = "";

  // Define time range (9:00 AM - 5:00 PM)
  final int minHour = 9;
  final int maxHour = 17;
  final int minMinute = 0;
  final int maxMinute = 0;

  void _showCupertinoTimePicker() {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext builder) {
        return Container(
          height: MediaQuery.of(context).copyWith().size.height / 3,
          child: CupertinoTimerPicker(
            mode: CupertinoTimerPickerMode.hm,
            initialTimerDuration: Duration(hours: 0, minutes: 0),
            onTimerDurationChanged: (Duration duration) {
              // Validate selected time
              int selectedHour = duration.inHours;
              int selectedMinute = duration.inMinutes % 60;

              if ((selectedHour > minHour || (selectedHour == minHour && selectedMinute >= minMinute)) &&
                  (selectedHour < maxHour || (selectedHour == maxHour && selectedMinute <= maxMinute))) {
                setState(() {
                  selectedTime = "${selectedHour}:${selectedMinute.toString().padLeft(2, '0')}";
                  validationMessage = "Selected time is within the allowed range.";
                });
              } else {
                setState(() {
                  selectedTime = "${selectedHour}:${selectedMinute.toString().padLeft(2, '0')}";
                  validationMessage = "Selected time is outside the allowed range.";
                });
              }
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
        title: Text("Task 8: Show Cupertino TimePicker"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text("Select Time"),
              onPressed: _showCupertinoTimePicker,
            ),
            SizedBox(height: 10),
            Text(
              "Selected Time: $selectedTime",
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 10),
            Text(
              validationMessage,
              style: TextStyle(
                fontSize: 16,
                color: validationMessage.contains("outside") ? Colors.red : Colors.green,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
