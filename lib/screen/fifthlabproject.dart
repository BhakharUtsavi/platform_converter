import 'package:flutter/material.dart';

class FifthLabProject extends StatefulWidget {
  const FifthLabProject({super.key});

  @override
  State<FifthLabProject> createState() => _FifthLabProjectState();
}

class _FifthLabProjectState extends State<FifthLabProject> {

  String selectedDate = "No date selected";
  String futureDate = "No future date";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                child: Text("Select Date"),
                onPressed: () async {
                  DateTime now = DateTime.now();
                  DateTime WeekAhead = now.add(Duration(days: 7));

                  setState(() {
                    selectedDate = "${now.day.toString()}-${now.month.toString()}-${now.year}";
                    futureDate = "${WeekAhead.day.toString()}-${WeekAhead.month.toString()}-${WeekAhead.year}";
                  });
                },
              ),
              SizedBox(height: 20),
              Text("Current Date: $selectedDate", style: TextStyle(fontSize: 18),),
              SizedBox(height: 10),
              Text("Date Week Ahead: $futureDate", style: TextStyle(fontSize: 18),),
            ],
          ),
        ),
      );
  }
}