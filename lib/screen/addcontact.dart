import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';
import '../model/contact.dart';
import '../provider/contact_provider.dart';
import '../provider/homeprovider.dart';

class AddContact extends StatefulWidget {
  const AddContact({super.key});

  @override
  State<AddContact> createState() => _AddContactState();
}

class _AddContactState extends State<AddContact> {
  TextEditingController nameController = TextEditingController();
  TextEditingController numberController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController dobController = TextEditingController();
  TextEditingController timerController = TextEditingController();
  int? editIndex;
  File? image;

  @override
  void initState() {
    super.initState();
  }

  Future<void> pickImage() async {
    final ImagePicker _picker = ImagePicker();
    final XFile? pickedFile =
        await _picker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      setState(() {
        image = File(pickedFile.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    editIndex = ModalRoute.of(context)?.settings.arguments as int?;
    if (editIndex != null) {
      Contact contact = Provider.of<ContactProvider>(context, listen: false)
          .contactList[editIndex!];
      nameController.text = contact.name ?? "";
      numberController.text = contact.number ?? "";
      emailController.text = contact.email ?? "";
      addressController.text = contact.address ?? "";
    }
    if (Provider.of<HomeProvider>(context).isAndroid) {
      return Scaffold(
        appBar: AppBar(
          foregroundColor: Colors.white,
          backgroundColor: Colors.blue,
          title: const Text("Add Contact"),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              children: [
                const SizedBox(height: 16),
                TextFormField(
                  controller: nameController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter your name',
                    prefixIcon: Icon(Icons.person),
                    labelText: 'Enter your Name',
                  ),
                ),
                const SizedBox(height: 16),
                TextFormField(
                  controller: numberController,
                  keyboardType: TextInputType.number,
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter your number',
                    prefixIcon: Icon(Icons.call),
                    labelText: 'Enter your number',
                  ),
                ),
                const SizedBox(height: 16),
                TextFormField(
                  controller: emailController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter your email',
                    prefixIcon: Icon(Icons.title),
                    labelText: 'Enter your email',
                  ),
                ),
                const SizedBox(height: 16),
                TextFormField(
                  controller: addressController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter your address',
                    prefixIcon: Icon(Icons.location_on),
                    labelText: 'Enter your address',
                  ),
                ),
                const SizedBox(height: 16),
                TextFormField(
                  controller: dobController,
                  decoration: const InputDecoration(hintText: "Select DOB"),
                  readOnly: true,
                  onTap: () async {
                    print("Select DOB");
                    DateTime? selectDate = await showDatePicker(
                      context: context,
                      firstDate: DateTime(2004),
                      currentDate: DateTime.now(),
                      lastDate: DateTime(2050),
                    );
                    print("selectDate $selectDate");
                    if (selectDate != null) {
                      dobController.text =
                          "${selectDate?.day ?? ""}-${selectDate?.month ?? ""}-${selectDate?.year ?? ""}";
                    }
                  },
                ),
                const SizedBox(height: 16),
                TextFormField(
                  controller: timerController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter your timer',
                  ),
                  readOnly: true,
                  onTap: () async {
                    TimeOfDay? time = await showTimePicker(
                        context: context, initialTime: TimeOfDay.now());
                    print("time $time");
                    if (time != null) {
                      timerController.text =
                          "${time?.hour ?? ""}:${time?.minute ?? ""}";
                    }
                  },
                ),
                const SizedBox(
                  height: 50,
                ),
                ElevatedButton(
                  onPressed: () {
                    print(nameController.text);
                    print(numberController.text);
                    print(emailController.text);
                    print(addressController.text);

                    Contact con = Contact(
                      name: nameController.text,
                      number: numberController.text,
                      email: emailController.text,
                      address: addressController.text,
                    );

                    if (editIndex == null) {
                      Provider.of<ContactProvider>(context, listen: false)
                          .addContact(con);
                    } else {
                      Provider.of<ContactProvider>(context, listen: false)
                          .editContact(con, editIndex!);
                    }

                    nameController.clear();
                    numberController.clear();
                    emailController.clear();
                    addressController.clear();
                    Navigator.pop(context);
                  },
                  child:
                      Text(editIndex != null ? "Edit Contact" : "Add Contact"),
                )
              ],
            ),
          ),
        ),
      );
    } else {
      return CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: Text(editIndex != null ? "Edit Contact" : "Add Contact"),
        ),
        child: SafeArea(
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Column(
                    children: [
                      Container(
                        height: 200,
                        child: Column(
                          children: [
                            image == null
                                ? SizedBox(
                                    child: Container(
                                      height: 130,
                                      width: 130,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color: Colors.blueAccent,
                                          width: 2,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(100),
                                        color: CupertinoColors.activeBlue
                                            .withOpacity(0.1),
                                      ),
                                      child: Center(
                                        child: const Text(
                                          "ADD",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w800,
                                            fontSize: 20,
                                            color: CupertinoColors.activeBlue,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                  )
                                : SizedBox(
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(80),
                                      child: Image.file(
                                        image!,
                                        width: 130,
                                        height: 130,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                CupertinoButton(
                                  onPressed: pickImage,
                                  child: const Icon(CupertinoIcons.camera,
                                      color: CupertinoColors.black, size: 25),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      CupertinoTextField(
                        controller: nameController,
                        placeholder: "Name",
                        style: const TextStyle(fontSize: 18),
                        placeholderStyle: const TextStyle(
                            fontSize: 18, color: CupertinoColors.systemGrey),
                        padding: const EdgeInsets.symmetric(
                            vertical: 18, horizontal: 10),
                        textCapitalization: TextCapitalization.words,
                        keyboardType: TextInputType.text,
                        textInputAction: TextInputAction.next,
                      ),
                      const SizedBox(height: 10),
                      CupertinoTextField(
                        controller: numberController,
                        placeholder: "Number",
                        style: const TextStyle(fontSize: 18),
                        placeholderStyle: const TextStyle(
                            fontSize: 18, color: CupertinoColors.systemGrey),
                        padding: const EdgeInsets.symmetric(
                            vertical: 18, horizontal: 10),
                        keyboardType: TextInputType.number,
                        textInputAction: TextInputAction.next,
                      ),
                      const SizedBox(height: 10),
                      CupertinoTextField(
                        controller: emailController,
                        placeholder: "Email",
                        style: const TextStyle(fontSize: 18),
                        placeholderStyle: const TextStyle(
                            fontSize: 18, color: CupertinoColors.systemGrey),
                        padding: const EdgeInsets.symmetric(
                            vertical: 18, horizontal: 10),
                        keyboardType: TextInputType.emailAddress,
                      ),
                      const SizedBox(height: 10),
                      CupertinoTextField(
                        controller: addressController,
                        placeholder: "Address",
                        style: const TextStyle(fontSize: 18),
                        placeholderStyle: const TextStyle(
                            fontSize: 18, color: CupertinoColors.systemGrey),
                        padding: const EdgeInsets.symmetric(
                            vertical: 18, horizontal: 10),
                        textCapitalization: TextCapitalization.words,
                        keyboardType: TextInputType.text,
                      ),
                      const SizedBox(height: 10),
                      CupertinoTextField(
                        controller: dobController,
                        placeholder: "Select DOB",
                        style: const TextStyle(fontSize: 18),
                        placeholderStyle: const TextStyle(
                            fontSize: 18, color: CupertinoColors.systemGrey),
                        padding: const EdgeInsets.symmetric(
                            vertical: 18, horizontal: 10),
                        readOnly: true,
                        prefix: CupertinoButton(
                          padding: EdgeInsets.zero,
                          onPressed: () {
                            showCupertinoModalPopup(
                              context: context,
                              builder: (BuildContext context) {
                                return Container(
                                  height: 300,
                                  color: CupertinoColors.systemBackground,
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height: 200,
                                        child: CupertinoDatePicker(
                                          mode: CupertinoDatePickerMode.date,
                                          initialDateTime: DateTime.now(),
                                          onDateTimeChanged: (DateTime date) {
                                            setState(() {
                                              dobController.text =
                                                  "${date.day} / ${date.month} / ${date.year}";
                                            });
                                          },
                                        ),
                                      ),
                                      CupertinoButton(
                                        child: const Text("Done"),
                                        onPressed: () {
                                          Navigator.pop(
                                              context); // Close the modal
                                        },
                                      ),
                                    ],
                                  ),
                                );
                              },
                            );
                          },
                          child: const Icon(CupertinoIcons.calendar),
                        ),
                      ),
                      const SizedBox(height: 10),
                      CupertinoTextField(
                        controller: timerController,
                        placeholder: "Select Time",
                        style: const TextStyle(fontSize: 18),
                        placeholderStyle: const TextStyle(
                            fontSize: 18, color: CupertinoColors.systemGrey),
                        padding: const EdgeInsets.symmetric(
                            vertical: 18, horizontal: 10),
                        readOnly: true,
                        prefix: CupertinoButton(
                          padding: EdgeInsets.zero,
                          onPressed: () {
                            showCupertinoModalPopup(
                              context: context,
                              builder: (BuildContext context) {
                                return Container(
                                  height: 300,
                                  color: CupertinoColors.systemBackground,
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      SizedBox(
                                        height: 200,
                                        child: CupertinoTimerPicker(
                                          mode: CupertinoTimerPickerMode.hm,
                                          onTimerDurationChanged:
                                              (Duration newTimer) {
                                            String formattedTime =
                                                "${newTimer.inHours.toString().padLeft(2, '0')}:${(newTimer.inMinutes % 60).toString().padLeft(2, '0')}";
                                            setState(() {
                                              timerController.text =
                                                  formattedTime;
                                            });
                                          },
                                        ),
                                      ),
                                      CupertinoButton(
                                        child: const Text("Done"),
                                        onPressed: () {
                                          Navigator.pop(
                                              context); // Close the modal
                                        },
                                      ),
                                    ],
                                  ),
                                );
                              },
                            );
                          },
                          child: const Icon(CupertinoIcons.clock),
                        ),
                      ),
                      const SizedBox(height: 50),
                      CupertinoButton.filled(
                        onPressed: () {
                          Contact contact = Contact(
                            name: nameController.text,
                            number: numberController.text,
                            email: emailController.text,
                            address: addressController.text,
                            img: image?.path,
                          );

                          if (editIndex == null) {
                            Provider.of<ContactProvider>(context, listen: false)
                                .addContact(contact);
                          } else {
                            Provider.of<ContactProvider>(context, listen: false)
                                .editContact(contact, editIndex!);
                          }

                          nameController.clear();
                          numberController.clear();
                          emailController.clear();
                          addressController.clear();
                          Navigator.pop(context);
                        },
                        child: Text(
                            editIndex != null ? "Edit Contact" : "Add Contact"),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }
  }
}
