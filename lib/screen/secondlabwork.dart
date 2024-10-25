import 'package:flutter/material.dart';

class SecondLabWork extends StatefulWidget {
  const SecondLabWork({super.key});

  @override
  State<SecondLabWork> createState() => _SecondLabWorkState();
}

class _SecondLabWorkState extends State<SecondLabWork> {

  String selectedDateRange = "No date range selected";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Task 2 rang"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text("Select Date Range"),
              onPressed: () async {
                print("Select Date Range");
                DateTimeRange? dateRange = await showDateRangePicker(
                  context: context,
                  firstDate: DateTime(2005),
                  lastDate: DateTime(2050),
                );
                if (dateRange != null) {
                  setState(() {
                    selectedDateRange =
                    "${dateRange.start.day}-${dateRange.start.month}-${dateRange.start.year} to ${dateRange.end.day}-${dateRange.end.month}-${dateRange.end.year}";
                  });
                }
              },
            ),
            SizedBox(height: 20),
            Text(
              "Selected Date Range: $selectedDateRange",
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
