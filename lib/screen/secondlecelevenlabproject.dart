import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SecondLecElevenLabProject extends StatefulWidget {
  const SecondLecElevenLabProject({super.key});

  @override
  State<SecondLecElevenLabProject> createState() => _SecondLecElevenLabProjectState();
}

class _SecondLecElevenLabProjectState extends State<SecondLecElevenLabProject> {

  String userInput = "";
  TextEditingController textController = TextEditingController();

  void _showCupertinoAlertDialog() {
    showCupertinoDialog(
      context: context,
      builder: (BuildContext context) {
        return CupertinoAlertDialog(
          title: Text("Input Required"),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text("Please enter some text:"),
              CupertinoTextField(
                controller: textController,
                placeholder: "Type something...",
              ),
            ],
          ),
          actions: [
            CupertinoDialogAction(
              child: Text("Submit"),
              onPressed: () {
                setState(() {
                  userInput = textController.text;
                });
                textController.clear();
                Navigator.of(context).pop();
              },
            ),
            CupertinoDialogAction(
              child: Text("Cancel"),
              onPressed: () {
                textController.clear();
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
        title: Text("Cupertino Alert Dialog with Input"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: _showCupertinoAlertDialog,
              child: Text("Show Input Dialog"),
            ),
            SizedBox(height: 20),
            Text(
              userInput.isEmpty ? "No input submitted" : "Submitted Input: $userInput",
              style: TextStyle(fontSize: 18, color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}
