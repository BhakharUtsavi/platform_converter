import 'package:flutter/material.dart';

class SixLabProject extends StatefulWidget {
  const SixLabProject({super.key});

  @override
  State<SixLabProject> createState() => _SixLabProjectState();
}

class _SixLabProjectState extends State<SixLabProject> {

  final TextEditingController date1Controller = TextEditingController();
  final TextEditingController date2Controller = TextEditingController();
  String resultMessage = "";

  bool _isValidDate(String date) {
    RegExp regExp = RegExp(r'^\d{4}-\d{2}-\d{2}$');
    return regExp.hasMatch(date);
  }

  bool _canParseDate(String date) {
    DateTime? parsedDate;
    if (_isValidDate(date)) {
      parsedDate = DateTime.tryParse(date);
    }
    return parsedDate != null;
  }

  void _calculateDateDifference() {
    String date1String = date1Controller.text;
    String date2String = date2Controller.text;

    if (_canParseDate(date1String) && _canParseDate(date2String)) {
      DateTime date1 = DateTime.parse(date1String);
      DateTime date2 = DateTime.parse(date2String);

      final difference = date2.difference(date1).inDays;

      setState(() {
        resultMessage = "Difference: $difference day(s)";
      });
    } else {
      setState(() {
        resultMessage = "Invalid date format. Use YYYY-MM-DD.";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Date Difference Calculator'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: date1Controller,
              decoration: InputDecoration(
                labelText: 'Enter first date (YYYY-MM-DD)',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.datetime,
            ),
            SizedBox(height: 20),
            TextField(
              controller: date2Controller,
              decoration: InputDecoration(
                labelText: 'Enter second date (YYYY-MM-DD)',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.datetime,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _calculateDateDifference,
              child: Text('Calculate Difference'),
            ),
            SizedBox(height: 20),
            Text(
              resultMessage,
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
