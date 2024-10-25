import 'dart:async';

import 'package:flutter/material.dart';

class SecondLecSixLabProject extends StatefulWidget {
  const SecondLecSixLabProject({super.key});

  @override
  State<SecondLecSixLabProject> createState() => _SecondLecSixLabProjectState();
}

class _SecondLecSixLabProjectState extends State<SecondLecSixLabProject> {

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
        title: Text("Task 6- Show corrent date and time"),
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
