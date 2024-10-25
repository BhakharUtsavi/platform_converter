import 'package:flutter/material.dart';

class FirstLabProject extends StatefulWidget {
  const FirstLabProject({super.key});

  @override
  State<FirstLabProject> createState() => _FirstLabProjectState();
}

class _FirstLabProjectState extends State<FirstLabProject> {

  TextEditingController dateController = TextEditingController();
  String selectedDate = "No date selected";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Task 1 show datepicker"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text("Select Date"),
              onPressed: () async {
                DateTime? selectDate = await showDatePicker(
                  context: context,
                  firstDate: DateTime(2005),
                  currentDate: DateTime.now(),
                  lastDate: DateTime(2050),
                );
                print("selectDate $selectDate");
                if (selectDate != null) {
                  setState(() {
                    selectedDate =
                    "${selectDate.day}-${selectDate.month}-${selectDate.year}";
                  });
                }
              },
            ),
            SizedBox(height: 20),
            Text(
              "Selected Date: $selectedDate",
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
