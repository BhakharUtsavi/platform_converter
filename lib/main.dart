import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:platform_converter/provider/contact_provider.dart';
import 'package:platform_converter/provider/homeprovider.dart';
import 'package:platform_converter/provider/mainprovider.dart';
import 'package:platform_converter/screen/addcontact.dart';
import 'package:platform_converter/screen/androidsplashscreen.dart';
import 'package:platform_converter/screen/contactpage.dart';
import 'package:platform_converter/screen/eightlabproject.dart';
import 'package:platform_converter/screen/fifthlabproject.dart';
import 'package:platform_converter/screen/firstlabproject.dart';
import 'package:platform_converter/screen/fourthlabproject.dart';
import 'package:platform_converter/screen/ninelabproject.dart';
import 'package:platform_converter/screen/secondlabwork.dart';
import 'package:platform_converter/screen/secondleceightlabproject.dart';
import 'package:platform_converter/screen/secondlecelevenlabproject.dart';
import 'package:platform_converter/screen/secondlecfifthlabproject.dart';
import 'package:platform_converter/screen/secondlecfirstlabproject.dart';
import 'package:platform_converter/screen/secondlecforthlabproject.dart';
import 'package:platform_converter/screen/secondlecninelabproject.dart';
import 'package:platform_converter/screen/secondlecsecondlabproject.dart';
import 'package:platform_converter/screen/secondlecsevenlabproject.dart';
import 'package:platform_converter/screen/secondlecsixlabproject.dart';
import 'package:platform_converter/screen/secondlectenlabproject.dart';
import 'package:platform_converter/screen/secondlecthirdlabproject.dart';
import 'package:platform_converter/screen/sevenlabproject.dart';
import 'package:platform_converter/screen/sixlabproject.dart';
import 'package:platform_converter/screen/thirdlabproject.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
      MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => HomeProvider()),
          ChangeNotifierProvider(create: (context)=>MainProvider()),
          ChangeNotifierProvider(create: (context)=>ContactProvider()),
        ],
        builder: (context, child) {
          var isAndriod =
              Provider.of<HomeProvider>(context, listen: false).isAndroid;
          return isAndriod
              ? MaterialApp(
            debugShowCheckedModeBanner: false,
            routes: {
              "firstlabwork":(context)=>FirstLabProject(),
              "secondlabwork":(context)=>SecondLabWork(),
              "thirdlabwork":(context)=>ThirdLabProject(),
              "fourthlabwork":(context)=>FourthLabProject(),
              "fifthlabwork":(context)=>FifthLabProject(),
              "sixlabwork":(context)=>SixLabProject(),
              "sevenlabwork":(context)=>SevenLabProject(),
              "eightlabwork":(context)=>EightLabProject(),
              "ninelabwork":(context)=>NineLabProject(),

              "secondlecfirstlabwork":(context)=>SecondLecFirstLabProject(),
              "secondlecsecondlabwork":(context)=>SecondLecSecondLabProject(),
              "secondlecthirdlabwork":(context)=>SecondLecThirdLabProject(),
              "secondlecfourthlabwork":(context)=>SecondLecForthLabProject(),
              "secondlecfifthlabwork":(context)=>SecondLecFifthLabProject(),
              "secondlecsixlabwork":(context)=>SecondLecSixLabProject(),
              "secondlecsevenlabwork":(context)=>SecondLecSevenLabProject(),
              "secondleceightlabwork":(context)=>SecondLecEightLabProject(),
              "secondlecninelabwork":(context)=>SecondLecNineLabProject(),
              "secondlectenlabwork":(context)=>SecondLecTenLabProject(),
              "secondlecelevenlabwork":(context)=>SecondLecElevenLabProject(),
              "/": (context) =>Android_SplashScreen(),
              'contact': (context) => ContactPage(),
              "addContact": (context) =>AddContact(),
            },
          )
              : CupertinoApp(
            routes: {
              "firstlabwork":(context)=>FirstLabProject(),
              "secondlabwork":(context)=>SecondLabWork(),
              "thirdlabwork":(context)=>ThirdLabProject(),
              "fourthlabwork":(context)=>FourthLabProject(),
              "fifthlabwork":(context)=>FifthLabProject(),
              "sixlabwork":(context)=>SixLabProject(),
              "sevenlabwork":(context)=>SevenLabProject(),
              "eightlabwork":(context)=>EightLabProject(),
              "ninelabwork":(context)=>NineLabProject(),
              "/": (context) =>Android_SplashScreen(),
              'contact': (context) => ContactPage(),
              "addContact": (context) =>AddContact(),
            },
          );
        },
      ));
}
