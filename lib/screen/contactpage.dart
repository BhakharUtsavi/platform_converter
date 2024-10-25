import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:local_auth/local_auth.dart';
import 'package:provider/provider.dart';
import 'package:share_plus/share_plus.dart';
import 'package:url_launcher/url_launcher.dart';
import '../model/contact.dart';
import '../provider/contact_provider.dart';
import '../provider/homeprovider.dart';
import '../provider/mainprovider.dart';
import 'addcontact.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({super.key});

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  @override
  Widget build(BuildContext context) {
    if (Provider.of<HomeProvider>(context).isAndroid) {
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
                    child: const Text(
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
                    child: const Text(
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
                    child: const Text(
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
                    child: const Text(
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
                    child: const Text(
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
                    child: const Text(
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
                    child: const Text(
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
                    child: const Text(
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
                    child: const Text(
                      "Nine Lab Work",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed("secondlecfirstlabwork");
                    },
                    child: const Text(
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
                    child: const Text(
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
                    child: const Text(
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
                    child: const Text(
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
                    child: const Text(
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
                    child: const Text(
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
                    child: const Text(
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
                    child: const Text(
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
                    child: const Text(
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
                    child: const Text(
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
                    child: const Text(
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
        bottomNavigationBar: Consumer<MainProvider>(
          builder: (BuildContext context, MainProvider value, Widget? child) {
            return BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              currentIndex: value.menuIndex,
              onTap: (index) {
                print("index $index");
                value.pageController?.animateToPage(
                  index,
                  duration: const Duration(milliseconds: 100),
                  curve: Curves.linear,
                );
                value.changeMenuIndex(index);
              },
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(Icons.call),
                  label: "Calls",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.contacts),
                  label: "Contacts",
                ),
              ],
            );
          },
        ),
        body: PageView(
          controller:
              Provider.of<MainProvider>(context, listen: false).pageController,
          onPageChanged: (value) {
            Provider.of<MainProvider>(context, listen: false)
                .changeMenuIndex(value);
            print("index $value");
          },
          children: [
            Consumer<ContactProvider>(
              builder:
                  (BuildContext context, ContactProvider value, Widget? child) {
                if (value.contactList.isEmpty) {
                  return Column(
                    children: const [
                      SizedBox(height: 280),
                      Center(
                        child: Text(
                          "No Contact",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 50),
                        ),
                      ),
                      SizedBox(height: 220),
                    ],
                  );
                }
                return ListView.builder(
                  itemCount: value.contactList.length,
                  itemBuilder: (context, index) {
                    Contact contact = value.contactList[index];
                    return ListTile(
                      leading: CircleAvatar(
                        child: Text(contact.name?.split("").first ?? ""),
                      ),
                      title: Text(
                        contact.name ?? "",
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text(
                        contact.number ?? "",
                        style: const TextStyle(color: Colors.grey),
                      ),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                            onPressed: () {
                              launchUrl(Uri.parse("tel:${contact.number}"));
                            },
                            icon: const Icon(Icons.call),
                          ),
                          PopupMenuButton<String>(
                            onSelected: (val) {
                              print("onSelected $val");
                              if (val == "edit") {
                                Navigator.of(context).pushNamed(
                                  "addContact",
                                  arguments: index,
                                );
                              } else if (val == "delete") {
                                value.removeContact(index);
                              } else if (val == "mail") {
                                launchUrl(Uri.parse("mailto:${contact.email}"));
                              } else if (val == "share") {
                                String shareText =
                                    "Please call me, I am waiting at ${contact.number}";
                                Share.share(shareText);
                              } else if (val == "whatsapp") {
                                launchUrl(Uri.parse(
                                    "https://wa.me/${contact.number}"));
                              }
                            },
                            itemBuilder: (context) => const [
                              PopupMenuItem(
                                value: "edit",
                                child: ListTile(
                                  leading: Icon(Icons.edit),
                                  title: Text("Edit"),
                                ),
                              ),
                              PopupMenuItem(
                                value: "delete",
                                child: ListTile(
                                  leading: Icon(Icons.delete),
                                  title: Text("Delete"),
                                ),
                              ),
                              PopupMenuItem(
                                value: "share",
                                child: ListTile(
                                  leading: Icon(Icons.share),
                                  title: Text("Share"),
                                ),
                              ),
                              PopupMenuItem(
                                value: "mail",
                                child: ListTile(
                                  leading: Icon(Icons.mail),
                                  title: Text("Email"),
                                ),
                              ),
                              PopupMenuItem(
                                value: "whatsapp",
                                child: ListTile(
                                  leading: Icon(Icons.message),
                                  title: Text("WhatsApp"),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                );
              },
            ),
            const Calls(),
          ],
        ),

        floatingActionButton: Align(
          alignment: Alignment.bottomRight,
          child: Padding(
            padding: const EdgeInsets.only(right: 10),
            child: FloatingActionButton(
              child: const Icon(Icons.add),
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
          ),
        ),
      );
    } else {
      return CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          trailing: Consumer<HomeProvider>(
            builder: (context, homeProvider, child) {
              return CupertinoSwitch(
                value: homeProvider.isAndroid,
                onChanged: (value) {
                  homeProvider.change();
                },
              );
            },
          ),
        ),
        child: Stack(
          children: [
            CupertinoTabScaffold(
              tabBar: CupertinoTabBar(
                items: const [
                  BottomNavigationBarItem(
                    icon: Icon(CupertinoIcons.phone),
                    label: "Calls",
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(CupertinoIcons.person_2),
                    label: "Contacts",
                  ),
                ],
              ),
              tabBuilder: (context, index) {
                return CupertinoTabView(
                  builder: (context) {
                    if (index == 1) {
                      return Calls();
                    } else if (index == 0) {
                      return PageView(
                        controller:
                            Provider.of<MainProvider>(context, listen: false)
                                .pageController,
                        onPageChanged: (value) {
                          Provider.of<MainProvider>(context, listen: false)
                              .changeMenuIndex(value);
                          print("index $value");
                        },
                        children: [
                          Consumer<ContactProvider>(
                            builder: (context, value, child) {
                              if (value.contactList.isEmpty) {
                                return Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Text(
                                      "No Contact",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(fontSize: 30),
                                    ),
                                  ],
                                );
                              }
                              return ListView.builder(
                                itemCount: value.contactList.length,
                                itemBuilder: (context, index) {
                                  Contact contact = value.contactList[index];
                                  return CupertinoListTile(
                                    leading: CircleAvatar(
                                      child: Text(
                                          contact.name?.substring(0, 1) ?? ""),
                                    ),
                                    title: Text(
                                      contact.name ?? "",
                                      style: const TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    subtitle: Text(
                                      contact.number ?? "",
                                      style:
                                          const TextStyle(color: Colors.grey),
                                    ),
                                    trailing: CupertinoButton(
                                      padding: EdgeInsets.zero,
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          IconButton(
                                            onPressed: () {
                                              launchUrl(Uri.parse(
                                                  "tel:${contact.number}"));
                                            },
                                            icon: const Icon(Icons.call),
                                          ),
                                          const Icon(CupertinoIcons.ellipsis),
                                        ],
                                      ),
                                      onPressed: () {
                                        showCupertinoModalPopup(
                                          context: context,
                                          builder: (context) {
                                            return CupertinoActionSheet(
                                              actions: [
                                                CupertinoActionSheetAction(
                                                  child: const Text("Edit"),
                                                  onPressed: () {
                                                    Navigator.of(context)
                                                        .pushNamed(
                                                      "addContact",
                                                      arguments: index,
                                                    );
                                                  },
                                                ),
                                                CupertinoActionSheetAction(
                                                  child: const Text("Delete"),
                                                  onPressed: () {
                                                    value.removeContact(index);
                                                    Navigator.pop(context);
                                                  },
                                                ),
                                                CupertinoActionSheetAction(
                                                  child: const Text("Mail"),
                                                  onPressed: () {
                                                    launchUrl(
                                                      Uri.parse(
                                                          "mailto:${contact.email}"),
                                                    );
                                                    Navigator.pop(context);
                                                  },
                                                ),
                                                CupertinoActionSheetAction(
                                                  child: const Text("Share"),
                                                  onPressed: () {
                                                    String shareText =
                                                        "Please call me, I am waiting at ${contact.number}";
                                                    Share.share(shareText);
                                                    Navigator.pop(context);
                                                  },
                                                ),
                                                CupertinoActionSheetAction(
                                                  child: const Text("WhatsApp"),
                                                  onPressed: () {
                                                    launchUrl(Uri.parse(
                                                        "https://wa.me/${contact.number}"));
                                                    Navigator.pop(context);
                                                  },
                                                ),
                                              ],
                                              cancelButton:
                                                  CupertinoActionSheetAction(
                                                child: const Text("Cancel"),
                                                onPressed: () {
                                                  Navigator.pop(context);
                                                },
                                              ),
                                            );
                                          },
                                        );
                                      },
                                    ),
                                  );
                                },
                              );
                            },
                          ),
                        ],
                      );
                    }
                    return Container();
                  },
                );
              },
            ),
            Positioned(
              bottom: 80,
              right: 16,
              child: CupertinoButton.filled(
                child: const Icon(CupertinoIcons.add),
                onPressed: () {
                  Navigator.of(context).push(
                    CupertinoPageRoute(
                      builder: (context) => const AddContact(),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      );
    }
  }
}

class Calls extends StatefulWidget {
  const Calls({super.key});

  @override
  State<Calls> createState() => _CallsState();
}

class _CallsState extends State<Calls> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const CupertinoSliverNavigationBar(
          largeTitle: Text("Calls"),
        ),
        SliverToBoxAdapter(
          child: CupertinoTextField(
            placeholder: "Search",
            onChanged: (value) {
              Provider.of<MainProvider>(context, listen: false)
                  .searchStudentByName(value);
            },
          ),
        ),
        SliverToBoxAdapter(
          child: Consumer<MainProvider>(
            builder: (context, mainProvider, child) {
              if (mainProvider.searchStudentList.isEmpty) {
                return Center(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(
                      "No contacts found.",
                      style: TextStyle(color: CupertinoColors.systemGrey),
                    ),
                  ),
                );
              }
              return Column(
                children: List.generate(
                  mainProvider.searchStudentList.length,
                  (index) {
                    var student = mainProvider.searchStudentList[index];
                    return CupertinoListTile(
                      title: Text(student.name ?? ""),
                      subtitle: Text("${student.contactno} contacts"),
                      leading: CircleAvatar(
                        backgroundColor: CupertinoColors.systemBlue,
                        child: Text(
                          student.name?.isNotEmpty == true
                              ? student.name![0].toUpperCase()
                              : "?",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      trailing: IconButton(
                        onPressed: () {
                          final Uri url = Uri.parse("tel:${student.contactno}");
                          launchUrl(url);
                        },
                        icon: const Icon(Icons.call),
                      ),
                    );
                  },
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
