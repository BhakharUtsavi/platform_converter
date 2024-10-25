import 'package:flutter/material.dart';

class ThirdLabProject extends StatefulWidget {
  const ThirdLabProject({super.key});

  @override
  State<ThirdLabProject> createState() => _ThirdLabProjectState();
}

class _ThirdLabProjectState extends State<ThirdLabProject> {

  TextEditingController dateController = TextEditingController();
  String selectedDate = "No date selected";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Task 3 Costom Date picker"),
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
