import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class SecondLecThirdLabProject extends StatefulWidget {
  const SecondLecThirdLabProject({super.key});

  @override
  State<SecondLecThirdLabProject> createState() => _SecondLecThirdLabProjectState();
}

class _SecondLecThirdLabProjectState extends State<SecondLecThirdLabProject> {

  String selectedTime="No Selected Date";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
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
                  DateTime now = DateTime.now();
                  DateTime selectedDateTime = DateTime(
                    now.year,
                    now.month,
                    now.day,
                    selected.hour,
                    selected.minute,
                    now.second,
                  );

                  String formattedTime = DateFormat('h:mm:ss a').format(selectedDateTime);

                  setState(() {
                    selectedTime = formattedTime;
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
