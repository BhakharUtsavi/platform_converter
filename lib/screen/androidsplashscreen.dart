import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'contactpage.dart';

class Android_SplashScreen extends StatefulWidget {
  const Android_SplashScreen({super.key});

  @override
  State<Android_SplashScreen> createState() => _Android_SplashScreenState();
}

class _Android_SplashScreenState extends State<Android_SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => ContactPage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: CircleAvatar(
            radius: 80,
            backgroundImage: NetworkImage("https://www.cultofmac.com/wp-content/uploads/2024/06/Android-vs-iPhone.jpg-1536x864.jpg"),
          ),
        ),
      );
  }
}
