import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SecondLecTenLabProject extends StatefulWidget {
  const SecondLecTenLabProject({super.key});

  @override
  State<SecondLecTenLabProject> createState() => _SecondLecTenLabProjectState();
}

class _SecondLecTenLabProjectState extends State<SecondLecTenLabProject> {

  String selectedAction = "No action selected";

  void _showCupertinoAlertDialog() {
    showCupertinoDialog(
      context: context,
      builder: (BuildContext context) {
        return CupertinoAlertDialog(
          title: Text("Backe"),
          content: Text("Are you sure you want to exit?"),
          actions: [
            CupertinoDialogAction(
              child: Text("OK"),
              onPressed: () {
                setState(() {
                  selectedAction = "OK Selected";
                });
                Navigator.of(context).pop();
              },
            ),
            CupertinoDialogAction(
              child: Text("Cancel"),
              onPressed: () {
                setState(() {
                  selectedAction = "Cancel Selected";
                });
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cupertino Alert Dialog Demo"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: _showCupertinoAlertDialog,
              child: Text("Show Alert Dialog"),
            ),
            SizedBox(height: 20),
            Text(
              selectedAction,
              style: TextStyle(fontSize: 18, color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}
