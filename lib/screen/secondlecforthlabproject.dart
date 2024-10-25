import 'package:flutter/material.dart';

class SecondLecForthLabProject extends StatefulWidget {
  const SecondLecForthLabProject({super.key});

  @override
  State<SecondLecForthLabProject> createState() => _SecondLecForthLabProjectState();
}

class _SecondLecForthLabProjectState extends State<SecondLecForthLabProject> {

  String selectedTime = "No time selected";
  String validationMessage = "";

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
                  initialTime: TimeOfDay.now(),
                );

                if (selected != null) {
                  setState(() {
                    selectedTime = "${selected.hour}:${selected.minute}";

                    // Check if the selected time is within business hours (9:00 AM - 5:00 PM)
                    if (selected.hour >= 9 && (selected.hour < 17 || (selected.hour == 17 && selected.minute == 0))) {
                      validationMessage = "Valid time: within business hours.";
                    } else {
                      validationMessage = "Invalid time: outside business hours.";
                    }
                  });
                }
              },
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
                color: validationMessage.contains("Invalid") ? Colors.red : Colors.green,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
