import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class SecondLecFifthLabProject extends StatefulWidget {
  const SecondLecFifthLabProject({super.key});

  @override
  State<SecondLecFifthLabProject> createState() => _SecondLecFifthLabProjectState();
}

class _SecondLecFifthLabProjectState extends State<SecondLecFifthLabProject> {
  final TextEditingController startTimeController = TextEditingController();
  final TextEditingController endTimeController = TextEditingController();
  String timeDifference = "Difference: N/A";

  // Function to check if a time string is valid
  bool isValidTimeFormat(String input) {
    final RegExp timeRegex = RegExp(r'^(1[0-2]|0?[1-9]):[0-5][0-9] (AM|PM)$');
    return timeRegex.hasMatch(input);
  }

  // Function to calculate time difference
  void calculateTimeDifference() {
    // Validate time formats
    if (!isValidTimeFormat(startTimeController.text) || !isValidTimeFormat(endTimeController.text)) {
      setState(() {
        timeDifference = "Invalid format! Enter times like '9:00 AM' or '5:00 PM'.";
      });
      return;
    }

    // Parsing times
    DateFormat format = DateFormat.jm();
    DateTime startTime = format.parse(startTimeController.text);
    DateTime endTime = format.parse(endTimeController.text);

    // Calculate difference
    Duration difference = endTime.difference(startTime);
    if (difference.isNegative) {
      difference += const Duration(hours: 24);
    }

    // Display result
    setState(() {
      timeDifference = "Difference: ${difference.inHours} hours and ${difference.inMinutes % 60} minutes";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Time Difference Calculator"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: startTimeController,
                decoration: const InputDecoration(
                  labelText: "Enter Start Time (e.g., 9:00 AM)",
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: endTimeController,
                decoration: const InputDecoration(
                  labelText: "Enter End Time (e.g., 5:00 PM)",
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              child: const Text("Calculate Time Difference"),
              onPressed: calculateTimeDifference,
            ),
            const SizedBox(height: 10),
            Text(
              timeDifference,
              style: const TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
