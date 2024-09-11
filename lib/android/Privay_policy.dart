import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:pro_deals1/utils/colors.dart';

class Privacy_Policy extends StatefulWidget {
  const Privacy_Policy({super.key});

  @override
  State<Privacy_Policy> createState() => _Privacy_PolicyState();
}

class _Privacy_PolicyState extends State<Privacy_Policy> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Privacy Policy",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: AppColor.primary,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Gap(20),
              const Text(
                "Privacy Policy",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const Gap(10),
              const Text(
                "The design of this gym website by primal7 is a complete gem, incorporating the About Us page template based on Four sections.",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey),
              ),
              const Gap(10),
              const Text(
                "They described who they were in a single line on the headings. They welcome their visitors by personalizing their website with a refreshing visual. You will find a perfect example of the 15-second rule on the cards that outlines their descriptions and is designed in a unique way that will grab your attention within seconds.",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey),
              ),
              const Gap(10),
              const Text(
                "Researchers say visitors stick to your website for around 15 seconds. And within this short time, if you can capture their attention, you can expect them to stick to your website for an extended visit. Besides, within this period of time, if you cannot grab their attention, you will lose your potential customers. This rule is called the 15 seconds rule.",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey),
              ),
              const Gap(10),
              Row(
                children: [
                  Transform.scale(
                    scale: 1.2,
                    child: Checkbox(
                        checkColor: Colors.white,
                        activeColor: const Color.fromARGB(255, 214, 170, 38),
                        value: isChecked,
                        onChanged: (bool? value) {
                          setState(() {
                            isChecked = value!;
                          });
                        }),
                  ),
                  const Text(
                    "I agree with the ",
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                  const Text(
                    "Privacy Policy",
                    style: TextStyle(
                        fontSize: 14,
                        color: Color.fromARGB(255, 214, 170, 38),
                        decoration: TextDecoration.underline,
                        decorationColor: Color.fromARGB(255, 214, 170, 38)),
                  ),
                ],
              ),
              Gap(30),
              GestureDetector(
                onTap: () {
                  // Navigator.push(context,
                  //     MaterialPageRoute(builder: (_) => successfully()));
                },
                child: Container(
                  height: 50,
                  width: 400,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 214, 170, 38),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Center(
                    child: Text(
                      "Confirm",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
