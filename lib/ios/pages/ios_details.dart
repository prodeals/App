import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';

import '../../utils/colors.dart';
import '../../widget/ios_button.dart';

class ios_detail extends StatefulWidget {
  const ios_detail({Key? key}) : super(key: key);

  @override
  State<ios_detail> createState() => _ios_detailState();
}

class _ios_detailState extends State<ios_detail> {
  File? selectedImage;

  TextEditingController _PANController = TextEditingController();
  TextEditingController _CategoryController = TextEditingController();
  TextEditingController _GSTController = TextEditingController();

  bool isChecked = false;

  Future<void> _pickImage() async {
    final picker = ImagePicker();
    final pickedImage = await picker.pickImage(source: ImageSource.gallery);

    if (pickedImage != null) {
      setState(() {
        selectedImage = File(pickedImage.path);
      });
    }
  }

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
                        onPressed: () {
                          // Navigator.pushReplacement(
                          //   context,
                          //   MaterialPageRoute(
                          //     builder: (_) => ios_address(),
                          //   ),
                          // );
                        },
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
                        Gap(hit / 15),
                        Text(
                          "Business / Profession Details",
                          style: GoogleFonts.inter(
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                            fontSize: 20,
                          ),
                        ),
                        Gap(hit / 15),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 24.0),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 3,
                                  color: Colors.grey.withOpacity(0.4),
                                  offset: const Offset(0, 0),
                                ),
                              ],
                              color: Colors.white.withOpacity(1),
                            ),
                            padding: const EdgeInsets.all(8),
                            child: CupertinoTextField(
                              placeholder: 'Category',
                              placeholderStyle: const TextStyle(
                                color: CupertinoColors.systemGrey,
                                fontSize: 16,
                              ),
                              decoration: const BoxDecoration(),
                              controller: _CategoryController,
                            ),
                          ),
                        ),
                        Gap(20),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 24.0),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 3,
                                  color: Colors.grey.withOpacity(0.4),
                                  offset: const Offset(0, 0),
                                ),
                              ],
                              color: Colors.white.withOpacity(1),
                            ),
                            padding: const EdgeInsets.all(8),
                            child: CupertinoTextField(
                              placeholder: 'GST Number',
                              placeholderStyle: const TextStyle(
                                color: CupertinoColors.systemGrey,
                                fontSize: 16,
                              ),
                              decoration: const BoxDecoration(),
                              controller: _GSTController,
                            ),
                          ),
                        ),
                        Gap(20),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 24.0),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 3,
                                  color: Colors.grey.withOpacity(0.4),
                                  offset: const Offset(0, 0),
                                ),
                              ],
                              color: Colors.white.withOpacity(1),
                            ),
                            padding: const EdgeInsets.all(8),
                            child: CupertinoTextField(
                              placeholder: 'PAN Number',
                              placeholderStyle: const TextStyle(
                                color: CupertinoColors.systemGrey,
                                fontSize: 16,
                              ),
                              decoration: const BoxDecoration(),
                              controller: _PANController,
                            ),
                          ),
                        ),
                        Gap(20),
                        const Padding(
                          padding: EdgeInsets.only(right: 140),
                          child: Text(
                            'Business / Profession Proof',
                            style: TextStyle(
                              color: Colors.black,
                              // fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),
                          ),
                        ),
                        Gap(20),
                        Stack(
                          children: [
                            GestureDetector(
                              onTap: _pickImage,
                              child: Container(
                                height: 150,
                                width: 120,
                                decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: selectedImage != null
                                    ? ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child: Image.file(
                                          selectedImage!,
                                          fit: BoxFit.cover,
                                        ),
                                      )
                                    : const Icon(
                                        Icons.add_photo_alternate,
                                        size: 50,
                                        color: Colors.white,
                                      ),
                              ),
                            ),
                            Positioned(
                              bottom: -4,
                              right: -4,
                              child: GestureDetector(
                                onTap: _pickImage,
                                child: Container(
                                  padding: const EdgeInsets.all(4),
                                  child: SvgPicture.asset(
                                      'assets/icons/pencil.svg'),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Gap(20),
                        CupertinoFormRow(
                          child: Row(
                            children: [
                              CupertinoCheckbox(
                                checkColor: AppColor.white,
                                activeColor: AppColor.primary,
                                value: isChecked,
                                onChanged: (bool? value) {
                                  setState(() {
                                    isChecked = value!;
                                  });
                                },
                              ),
                              Text(
                                "I have Multiple store",
                                style: TextStyle(
                                  color: AppColor.gray,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        ios_button(
                          onTap: () {
                            Get.toNamed('/ios_businessProfile');
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
      ),
    );
  }
}
