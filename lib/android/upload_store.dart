import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

import '../widget/imagepicker.dart';
import '../widget/my_button.dart';

class upload_store extends StatefulWidget {
  const upload_store({super.key});

  @override
  State<upload_store> createState() => _upload_storeState();
}

class _upload_storeState extends State<upload_store> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Create Business",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              Get.toNamed('/Profession_details');
            },
            icon: const Icon(Icons.arrow_back)),
        backgroundColor: const Color.fromARGB(255, 214, 170, 38),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const Gap(25),
              const Text(
                "Upload Store / Work Place Images",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Gap(70),
              const Wrap(
                spacing: 20,
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
              Padding(
                padding: const EdgeInsets.only(left: 230),
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
