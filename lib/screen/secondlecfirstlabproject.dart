import 'package:flutter/material.dart';

class SecondLecFirstLabProject extends StatefulWidget {
  const SecondLecFirstLabProject({super.key});

  @override
  State<SecondLecFirstLabProject> createState() =>
      _SecondLecFirstLabProjectState();
}

class _SecondLecFirstLabProjectState extends State<SecondLecFirstLabProject> {

  String selectedTime="No Selected Time";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: ()async{
              TimeOfDay? time=await showTimePicker(context: context, initialTime: TimeOfDay.now());

              if(time!=null){
               setState(() {
                 selectedTime="${time.hour}-${time.minute}";
               });
              }
            }, child: Text("Select Time"),
            ),

            Text("Selected Date : $selectedTime",style: TextStyle(fontSize: 20),),
          ],
        ),
      ),
    );
  }
}
