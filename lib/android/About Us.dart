import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class About_Us extends StatefulWidget {
  const About_Us({super.key});

  @override
  State<About_Us> createState() => _About_UsState();
}

class _About_UsState extends State<About_Us> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "About Us",
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
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Gap(20),
              Text(
                "About Us",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Gap(20),
              Text(
                "The design of this gym website by primal7 is a complete gem, incorporating the About Us page template based on Four sections.",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey),
              ),
              Gap(20),
              Text(
                "They described who they were in a single line on the headings. They welcome their visitors by personalizing their website with a refreshing visual. You will find a perfect example of the 15-second rule on the cards that outlines their descriptions and is designed in a unique way that will grab your attention within seconds.",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey),
              ),
              Gap(20),
              Text(
                "Researchers say visitors stick to your website for around 15 seconds. And within this short time, if you can capture their attention, you can expect them to stick to your website for an extended visit. Besides, within this period of time, if you cannot grab their attention, you will lose your potential customers. This rule is called the 15 seconds rule.",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
