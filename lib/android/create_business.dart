// ignore_for_file: use_build_context_synchronously
import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

import '../widget/my_button.dart';
import '../widget/my_textfield.dart';

class create_business extends StatefulWidget {
  create_business({super.key});

  @override
  State<create_business> createState() => _create_businessState();
}

final TextEditingController _nameController = TextEditingController();
final TextEditingController _bdateController = TextEditingController();
final TextEditingController _numberController = TextEditingController();
final TextEditingController _EmailController = TextEditingController();

class _create_businessState extends State<create_business> {
  Uint8List? _image;
  File? selectedImage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Create Business",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 214, 170, 38),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const Gap(25),
              Stack(
                children: [
                  _image != null
                      ? CircleAvatar(
                          radius: 40,
                          backgroundImage: MemoryImage(_image!),
                        )
                      : const CircleAvatar(
                          radius: 40,
                        ),
                  if (_image == null)
                    Positioned(
                      bottom: 3,
                      right: 0,
                      child: GestureDetector(
                          onTap: () {
                            imagepicker(context);
                          },
                          child: Image.asset("assets/image/Group 3747.png")),
                    )
                ],
              ),
              const Gap(20),
              const Text(
                'Personal Information',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      'Full Name',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                  const Gap(10),
                  My_TextFiled(controller: _nameController),
                  const SizedBox(
                    height: 20,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      'Date of Birth',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                  const Gap(10),
                  My_TextFiled(controller: _bdateController),
                  const SizedBox(
                    height: 20,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      'Phone Number',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                  const Gap(10),
                  My_TextFiled(controller: _numberController),
                  const SizedBox(
                    height: 20,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      'Email Address',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                  const Gap(10),
                  My_TextFiled(controller: _EmailController),
                  const Gap(30),
                  Padding(
                    padding: EdgeInsets.only(left: 240),
                    child: MyButton(
                      onTap: () {
                        Get.toNamed('/Business_Address');
                      },
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void imagepicker(BuildContext context) {
    showModalBottomSheet(
      backgroundColor: Colors.white,
      context: context,
      builder: (builder) {
        return Padding(
          padding: const EdgeInsets.all(18.0),
          child: SizedBox(
            height: MediaQuery.of(context).size.height / 4.5,
            width: MediaQuery.of(context).size.width,
            child: Row(
              children: [
                Expanded(
                  child: InkWell(
                    onTap: () {
                      _pickImageFromGallery();
                    },
                    child: const SizedBox(
                      child: Column(
                        children: [
                          Icon(
                            Icons.image,
                            size: 70,
                          ),
                          Text("Gallery"),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    onTap: () {
                      _pickImageFromcamera();
                    },
                    child: const SizedBox(
                      child: Column(
                        children: [
                          Icon(
                            Icons.camera_alt_sharp,
                            size: 70,
                          ),
                          Text("Camera"),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }

// Gallery
  Future _pickImageFromGallery() async {
    final returnImage =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    if (returnImage == null) return;
    setState(() {
      selectedImage = File(returnImage.path);
      _image = File(returnImage.path).readAsBytesSync();
    });
    Navigator.of(context).pop();
  }

  //Camera
  Future _pickImageFromcamera() async {
    final returnImage =
        await ImagePicker().pickImage(source: ImageSource.camera);
    if (returnImage == null) return;
    setState(() {
      selectedImage = File(returnImage.path);
      _image = File(returnImage.path).readAsBytesSync();
    });
    Navigator.of(context).pop();
  }
}
