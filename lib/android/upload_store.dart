import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

import '../widget/imagepicker.dart';
import '../widget/my_button.dart';

class UploadStore extends StatefulWidget {
  const UploadStore({super.key});

  @override
  State<UploadStore> createState() => _UploadStoreState();
}

class _UploadStoreState extends State<UploadStore> {
  @override
  Widget build(BuildContext context) {
    double hit = MediaQuery.of(context).size.height;
    double wid = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Create Business",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Icon(Icons.arrow_back)),
        backgroundColor: const Color.fromARGB(255, 214, 170, 38),
      ),
      body: Container(
        height: hit,
        width: wid,
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Gap(25),
              const Center(
                child: Text(
                  "Upload Store / Work Place Images",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
              const Gap(40),
              const Wrap(
                spacing: 10,
                runSpacing: 40,
                children: [
                  ImagePickerContainer(),
                  ImagePickerContainer(),
                  ImagePickerContainer(),
                  ImagePickerContainer(),
                  ImagePickerContainer(),
                  ImagePickerContainer(),
                ],
              ),
              const Gap(60),
              Align(
                alignment: Alignment.centerRight,
                child: MyButton(
                  onTap: () {
                    Get.toNamed('/verify');
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}