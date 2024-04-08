import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';

import '../../utils/colors.dart';
import '../../widget/ios_button.dart';

class ios_images extends StatefulWidget {
  const ios_images({Key? key}) : super(key: key);

  @override
  State<ios_images> createState() => _ios_imagesState();
}

class _ios_imagesState extends State<ios_images> {
  File? _image;

  Future<void> _pickImage() async {
    final picker = ImagePicker();
    final pickedImage = await picker.pickImage(source: ImageSource.gallery);

    if (pickedImage != null) {
      setState(() {
        _image = File(pickedImage.path);
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
                          // Navigator.pushReplacement(context,
                          //     MaterialPageRoute(builder: (_) => ios_profile()));
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
                          "Upload Store / Work Place Images",
                          style: GoogleFonts.inter(
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                            fontSize: 20,
                          ),
                        ),
                        const Gap(30),
                        GestureDetector(
                          onTap: _pickImage,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(
                                15), // Adjust the radius as needed
                            child: Container(
                              height: 156,
                              width: 156,
                              color: Colors.grey,
                              child: _image != null
                                  ? Image.file(
                                      _image!,
                                      fit: BoxFit.cover,
                                    )
                                  : const Icon(
                                      Icons.add_photo_alternate,
                                      size: 50,
                                      color: Colors.white,
                                    ),
                            ),
                          ),
                        ),
                        const Gap(30),
                        ios_button(
                          onTap: () {
                            // Navigator.pushReplacement(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: (_) => ios_verify()));
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
