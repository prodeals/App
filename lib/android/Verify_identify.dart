import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

import '../widget/verify_imagepicker.dart';

class verify extends StatefulWidget {
  const verify({super.key});

  @override
  State<verify> createState() => _verifyState();
}

class _verifyState extends State<verify> {
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
              Get.toNamed('/upload_store');
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
                "Verify Identify",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              const Gap(25),
              const Text(
                "Upload Water ID Card",
                style: TextStyle(fontSize: 16),
              ),
              const Gap(15),
              // Container(
              //   height: 200,
              //   width: 370,
              //   color: Colors.grey[350],
              // ),
              verify_imagepicker(),
              const Gap(25),
              const Text(
                "Upload Government ID ",
                style: TextStyle(fontSize: 16),
              ),
              const Gap(15),
              // Container(
              //   height: 200,
              //   width: 370,
              //   color: Colors.grey[350],
              // ),
              verify_imagepicker(),
              const Gap(25),
              GestureDetector(
                onTap: () {
                  Get.toNamed('/successfully');
                },
                child: Container(
                  height: 50,
                  width: 230,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 214, 170, 38),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Center(
                    child: Text(
                      "Verify Identify",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
