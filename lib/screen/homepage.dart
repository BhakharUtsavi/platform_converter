import 'dart:io';
import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:local_auth/local_auth.dart';
import 'package:provider/provider.dart';
import 'package:share_plus/share_plus.dart';
import 'package:url_launcher/url_launcher.dart';

import '../model/contact.dart';
import '../provider/contact_provider.dart';
import '../provider/homeprovider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var isAndriod = Provider.of<HomeProvider>(context, listen: false).isAndroid;
    if (isAndriod) {
      return Scaffold(
        appBar: AppBar(
          actions: [
            Consumer<HomeProvider>(
              builder: (context, homeProvider, child) {
                return Switch(
                  value: homeProvider.isAndroid,
                  onChanged: (value) {
                    homeProvider.change();
                  },
                );
              },
            ),
          ],
        ),
        drawer: Drawer(
          child: DrawerHeader(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed("firstlabwork");
                    },
                    child: Text(
                      "Lecture  1 \t\t\t First Lab Work",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed("secondlabwork");
                    },
                    child: Text(
                      "Second Lab Work",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed("thirdlabwork");
                    },
                    child: Text(
                      "Third Lab Work",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed("fourthlabwork");
                    },
                    child: Text(
                      "Fourth Lab Work",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed("fifthlabwork");
                    },
                    child: Text(
                      "Fifth Lab Work",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed("sixlabwork");
                    },
                    child: Text(
                      "Six Lab Work",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed("sevenlabwork");
                    },
                    child: Text(
                      "Seven Lab Work",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed("eightlabwork");
                    },
                    child: Text(
                      "Eight Lab Work",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed("ninelabwork");
                    },
                    child: Text(
                      "Nine Lab Work",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed("secondlecfirstlabwork");
                    },
                    child: Text(
                      "Lectuee 2 \t\t\t First lab work",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed("secondlecsecondlabwork");
                    },
                    child: Text(
                      "Second lab work",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed("secondlecthirdlabwork");
                    },
                    child: Text(
                      "Third lab work",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed("secondlecfourthlabwork");
                    },
                    child: Text(
                      "Fourth lab work",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed("secondlecfifthlabwork");
                    },
                    child: Text(
                      "Fifth lab work",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed("secondlecsixlabwork");
                    },
                    child: Text(
                      "Six lab work",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed("secondlecsevenlabwork");
                    },
                    child: Text(
                      "Seven lab work",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed("secondleceightlabwork");
                    },
                    child: Text(
                      "Eight lab work",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed("secondlecninelabwork");
                    },
                    child: Text(
                      "Nine lab work",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed("secondlectenlabwork");
                    },
                    child: Text(
                      "Ten lab work",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed("secondlecelevenlabwork");
                    },
                    child: Text(
                      "Eleven Lab Work",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        body: Consumer<ContactProvider>(
          builder:
              (BuildContext context, ContactProvider value, Widget? child) {
            if (value.contactList.isEmpty) {
              return Center(
                child: Text(
                  "No Contact",
                  style: TextStyle(fontSize: 50),
                ),
              );
            }
            return ListView.builder(
              itemCount: value.contactList.length,
              itemBuilder: (context, index) {
                Contact contact = value.contactList[index];
                return ListTile(
                  leading: CircleAvatar(
                    child: Text("${contact.name?.split("").first}"),
                  ),
                  title: Text(
                    contact.name ?? "",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    contact.number ?? "",
                    style: TextStyle(color: Colors.grey),
                  ),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                          onPressed: () {
                            launchUrl(Uri.parse("tel:${contact.number}"));
                          },
                          icon: Icon(Icons.call)),
                      PopupMenuButton(
                        itemBuilder: (context) {
                          return [
                            PopupMenuItem(
                              child: Row(
                                children: [Icon(Icons.edit), Text("Edit")],
                              ),
                              value: "edit",
                            ),
                            PopupMenuItem(
                              child: Row(
                                children: [Icon(Icons.delete), Text("Delete")],
                              ),
                              value: "delete",
                            ),
                            PopupMenuItem(
                              child: Row(
                                children: [Icon(Icons.share), Text("Share")],
                              ),
                              value: "share",
                            ),
                            PopupMenuItem(
                              child: Row(
                                children: [Icon(Icons.mail), Text("Email")],
                              ),
                              value: "mail",
                            ),
                            PopupMenuItem(
                              child: Row(
                                children: [Icon(Icons.edit), Text("WhatsApp")],
                              ),
                              value: "whatsapp",
                            ),
                          ];
                        },
                        onSelected: (val) {
                          //onTap:(){} me bhi likh sakte hai if kaa code
                          print("onSelected $val");
                          if (val == "edit") {
                            Navigator.of(context)
                                .pushNamed("addContact", arguments: index);
                          }
                          if (val == "delete") {
                            value.removeContact(index);
                          }
                          if (val == "mail") {
                            launchUrl(Uri.parse("mailto:${contact.email}"));
                          }
                          if (val == "share") {
                            String shareText =
                                "Please call me i am waiting ${contact.number}";
                            Share.share(shareText);
                            Share.shareXFiles([XFile("path")]);
                          }
                          if (val == "whatsapp") {
                            launchUrl(
                                Uri.parse("https://wa.me/${contact.number}"));
                          }
                        },
                      ),
                    ],
                  ),
                );
              },
            );
          },
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () async {
            Navigator.of(context).pushNamed("addContact");
            LocalAuthentication authentication = LocalAuthentication();
            if (await authentication.isDeviceSupported()) {
              print("isDeviceSupported");
              bool isAuth = await authentication.authenticate(
                  localizedReason: "Please authenticate to add Contact");
              if (isAuth) {
                Navigator.of(context).pushNamed("addContact");
              }
              print("isAuth $isAuth");
            } else {
              print("isDeviceSupported false");
            }
          },
        ),
        // CustomScrollView(
        //   slivers: [
        //     SliverAppBar(
        //       //title: Text("Hello"),
        //       pinned: true,
        //       expandedHeight: 250,
        //       flexibleSpace: FlexibleSpaceBar(
        //         expandedTitleScale: 250,
        //         collapseMode: CollapseMode.parallax,
        //         background: Image.network(
        //           "https://www.daily.co/blog/content/images/2023/07/Flutter-feature.png",
        //           fit: BoxFit.cover,
        //         ),
        //       ),
        //     ),
        //     SliverGrid.builder(
        //         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        //           crossAxisCount: 2,
        //           mainAxisExtent: 200,
        //         ),
        //         itemCount: 20,
        //         itemBuilder: (context, index) {
        //           int r = Random().nextInt(255);
        //           int g = Random().nextInt(255);
        //           int b = Random().nextInt(255);
        //           return Container(
        //             color: Color.fromARGB(255, r, g, b),
        //           );
        //         }),
        //     SliverToBoxAdapter(
        //       child: Column(
        //         children: [
        //           ElevatedButton(
        //               onPressed: () {
        //                 showDatePicker(
        //                   context: context,
        //                   firstDate: DateTime(2004),
        //                   lastDate: DateTime(2050),
        //                 ).then((value) => print(value));
        //               },
        //               child: Text("Select Date")),
        //           ElevatedButton(
        //               onPressed: () {
        //                 showTimePicker(
        //                     // builder: (context, child) => MediaQuery(
        //                     //     data: MediaQuery.of(context)
        //                     //         .copyWith(alwaysUse24HourFormat: true),
        //                     //     child: child!
        //                     // ), //use 24 hour formate
        //                         context: context, initialTime: TimeOfDay.now())
        //                     .then((value) => print(value));
        //               },
        //               child: Text("Select Time")),
        //           MyButton(),
        //           SizedBox(
        //             height: 300,
        //             child: CupertinoDatePicker(
        //                 use24hFormat: true,
        //                 mode: CupertinoDatePickerMode.dateAndTime,
        //                 onDateTimeChanged: (value) {
        //                   print("obj => $value");
        //                 }),
        //           )
        //         ],
        //       ),
        //     )
        //   ],
        // ),
        // Column(
        //   children: [
        //     CupertinoButton.filled(
        //       child: Text("Ok"),
        //       onPressed: () {},
        //     ),
        //     CupertinoActivityIndicator(
        //       color: Color(0xff72a4d6),
        //     ),
        //     CircularProgressIndicator(
        //       value: 0.6,
        //       // color: Color(0xff72a4d6),
        //       // color: Color.fromARGB(200, 114, 164, 214),
        //       // color: Color.fromRGBO(114, 164, 214, 0.5),
        //     )
        //   ],
        // ),
        // floatingActionButton: FloatingActionButton(
        //   onPressed: () {
        //     Navigator.of(context).pushNamed("mainprovider");
        //   },
        //   child: Icon(Icons.add),
        // ),
      );
    } else {
      return CupertinoPageScaffold(
        child: SafeArea(
          child: Column(
            children: [
              Text("Hello every one"),
              CupertinoButton(
                child: Text("Click"),
                onPressed: () {
                  print("Click");
                  print("Android => ${Platform.isAndroid}");
                  print("IOS => ${Platform.isIOS}");
                  print("Linux => ${Platform.isLinux}");
                  print("MacOS => ${Platform.isMacOS}");
                  print("Windows => ${Platform.isWindows}");
                  print("web => ${kIsWeb}");
                },
              )
            ],
          ),
        ),
      );
    }
  }
}

class MyButton extends StatefulWidget {
  const MyButton({super.key});

  @override
  State<MyButton> createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
            onPressed: () {
              showBottomSheet(
                  context: context,
                  builder: (context) {
                    return Container(
                      height: 250,
                      width: double.infinity,
                      color: Colors.cyan.shade300,
                      child: Column(
                        children: [
                          Text(
                            "First Name",
                            style: TextStyle(fontSize: 32),
                          ),
                          Text(
                            "Last Name",
                            style: TextStyle(fontSize: 32),
                          ),
                        ],
                      ),
                    );
                  });
            },
            child: Text("Show Bottom Sheet")),
        ElevatedButton(
            onPressed: () {
              showModalBottomSheet(
                  context: context,
                  isScrollControlled: true,
                  //scrollable
                  useSafeArea: true,
                  //provide safeArea
                  isDismissible: false,
                  //sheet open thy tyre bar click kri to sheet close thy jy  sheet close n thy aena mate isDismissable false
                  enableDrag: false,
                  //sheet ne drag thi close bhi n kri sako
                  barrierColor: Colors.grey.shade50,
                  // sheet open kri tyre background color grey thy jse
                  builder: (context) {
                    return Container(
                      height: 250,
                      width: double.infinity,
                      color: Colors.cyan.shade300,
                      child: Column(
                        children: [
                          Text(
                            "First Name",
                            style: TextStyle(fontSize: 32),
                          ),
                          Text(
                            "Last Name",
                            style: TextStyle(fontSize: 32),
                          ),
                        ],
                      ),
                    );
                  });
            },
            child: Text("Show Modal Bottom Sheet"))
      ],
    );
  }
}
