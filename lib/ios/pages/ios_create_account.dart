import 'dart:io';
import 'dart:typed_data';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';

import '../../utils/colors.dart';
import '../../widget/ios_button.dart';

class ios_create_account extends StatefulWidget {
  ios_create_account({super.key});

  // final TextEditingController _nameController = TextEditingController();
  // final TextEditingController _bdateController = TextEditingController();
  // final TextEditingController _numberController = TextEditingController();
  // final TextEditingController _EmailController = TextEditingController();

  @override
  State<ios_create_account> createState() => _ios_create_accountState();
}

class _ios_create_accountState extends State<ios_create_account> {
  Uint8List? _image;
  File? selectedImage;

  get _nameController => null;

  get _bdateController => null;

  get _numberController => null;

  get _EmailController => null;

  @override
  Widget build(BuildContext context) {
    double hit = MediaQuery.of(context).size.height;
    double wid = MediaQuery.of(context).size.width;
    return CupertinoPageScaffold(
        child: Container(
      height: hit,
      width: wid,
      color: AppColor.primary,
      child: Column(
        children: [
          Expanded(
            flex: 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.arrow_back,
                        color: Colors.black,
                      ),
                    ),
                    const Gap(60),
                    Text(
                      'Create Account',
                      style: GoogleFonts.inter(
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            flex: 7,
            child: Container(
              height: hit / 1.25,
              width: wid,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(120),
                ),
              ),
              child: Form(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Gap(hit / 17),
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
                                child:
                                    SvgPicture.asset('assets/icons/pencil.svg'),
                              ),
                            )
                        ],
                      ),
                      const Gap(20),
                      Text(
                        "Personal Information",
                        style: GoogleFonts.inter(
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                        ),
                      ),
                      const Gap(30),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 3,
                                  color: Colors.grey.withOpacity(0.4),
                                  offset: const Offset(0, 0)),
                            ],
                            color: Colors.white.withOpacity(1),
                          ),
                          padding: const EdgeInsets.all(8),
                          child: CupertinoTextField(
                            placeholder: 'Full Name',
                            placeholderStyle: const TextStyle(
                                color: CupertinoColors.systemGrey,
                                fontSize: 16),
                            decoration: const BoxDecoration(),
                            controller: _nameController,
                          ),
                        ),
                      ),
                      const Gap(15),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 3,
                                  color: Colors.grey.withOpacity(0.4),
                                  offset: const Offset(0, 0)),
                            ],
                            color: Colors.white.withOpacity(1),
                          ),
                          padding: const EdgeInsets.all(8),
                          child: CupertinoTextField(
                            placeholder: 'Date Of Birth',
                            placeholderStyle: const TextStyle(
                                color: CupertinoColors.systemGrey,
                                fontSize: 16),
                            decoration: const BoxDecoration(),
                            controller: _bdateController,
                          ),
                        ),
                      ),
                      const Gap(15),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 3,
                                  color: Colors.grey.withOpacity(0.4),
                                  offset: const Offset(0, 0)),
                            ],
                            color: Colors.white.withOpacity(1),
                          ),
                          padding: const EdgeInsets.all(8),
                          child: CupertinoTextField(
                            placeholder: 'Phone Number',
                            placeholderStyle: const TextStyle(
                                color: CupertinoColors.systemGrey,
                                fontSize: 16),
                            decoration: const BoxDecoration(),
                            controller: _numberController,
                          ),
                        ),
                      ),
                      const Gap(15),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 3,
                                  color: Colors.grey.withOpacity(0.4),
                                  offset: const Offset(0, 0)),
                            ],
                            color: Colors.white.withOpacity(1),
                          ),
                          padding: const EdgeInsets.all(8),
                          child: CupertinoTextField(
                            placeholder: 'Email Address',
                            placeholderStyle: const TextStyle(
                                color: CupertinoColors.systemGrey,
                                fontSize: 16),
                            decoration: const BoxDecoration(),
                            controller: _EmailController,
                          ),
                        ),
                      ),
                      const Gap(30),
                      ios_button(
                        onTap: () {
                          Get.toNamed('/ios_business_address');
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    ));
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
