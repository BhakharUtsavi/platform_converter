import 'dart:async';

import 'package:flutter/material.dart';

class FourthLabProject extends StatefulWidget {
  const FourthLabProject({super.key});

  @override
  State<FourthLabProject> createState() => _FourthLabProjectState();
}

class _FourthLabProjectState extends State<FourthLabProject> {

  TextEditingController dateController = TextEditingController();
  String selectedDate = "No date selected";
  String currentDateAndTime = "";

  @override
  void initState() {
    super.initState();
    updateDateTime();
    Timer.periodic(Duration(seconds: 1), (Timer t) {
      updateDateTime();
    });
  }

  void updateDateTime() {
    setState(() {
      DateTime now = DateTime.now();
      currentDateAndTime =
      "${now.day.toString()}/${now.month.toString()}/${now.year} ${now.hour.toString()}:${now.minute.toString()}:${now.second.toString()}";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Task 2- Show corrent date and time"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Current Date and Time: $currentDateAndTime",
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
