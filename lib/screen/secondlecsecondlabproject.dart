import 'package:flutter/material.dart';

class SecondLecSecondLabProject extends StatefulWidget {
  const SecondLecSecondLabProject({super.key});

  @override
  State<SecondLecSecondLabProject> createState() => _SecondLecSecondLabProjectState();
}

class _SecondLecSecondLabProjectState extends State<SecondLecSecondLabProject> {

  String selectedTime = "No time selected";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Task 1: Show TimePicker"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text("Select Time"),
              onPressed: () async {
                TimeOfDay? selected = await showTimePicker(
                  context: context,
                  initialTime: TimeOfDay(hour: 9, minute: 0),
                );
                if (selected != null) {
                  setState(() {
                    selectedTime = "${selected.hour}:${selected.minute}";
                  });
                }
              },
            ),
            SizedBox(height: 10),
            Text(
              "Selected Time: $selectedTime",
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
