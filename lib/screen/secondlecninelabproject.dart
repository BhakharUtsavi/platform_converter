import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class SecondLecNineLabProject extends StatefulWidget {
  const SecondLecNineLabProject({super.key});

  @override
  State<SecondLecNineLabProject> createState() =>
      _SecondLecNineLabProjectState();
}

class _SecondLecNineLabProjectState extends State<SecondLecNineLabProject> {
  String selectedTime = "No time selected";

  void _showCupertinoTimePicker() {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.purple[50],
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(25.0)),
      ),
      builder: (BuildContext builder) {
        return Container(
          height: MediaQuery.of(context).copyWith().size.height / 3,
          child: CupertinoTimerPicker(
            mode: CupertinoTimerPickerMode.hm,
            initialTimerDuration: Duration(hours: 0, minutes: 0),
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
        title: Text("Task 9: Show Cupertino TimePicker"),
        backgroundColor: Colors.deepPurple, // Customize AppBar background color
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepPurple,
                foregroundColor: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12), // Rounded button
                ),
              ),
              child: Text("Select Time"),
              onPressed: _showCupertinoTimePicker,
            ),
            SizedBox(height: 20),
            Text(
              "Selected Time: $selectedTime",
              style: TextStyle(
                fontSize: 22,
                color: Colors.deepPurple, // Custom text color
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.purple[50],
    );
  }
}
