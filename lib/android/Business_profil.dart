import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

import '../widget/my_button.dart';
import '../widget/my_textfield.dart';
import '../widget/textFile_2.dart';
import '../widget/textfiled.dart';

class Profession_Profile extends StatefulWidget {
  const Profession_Profile({super.key});

  @override
  State<Profession_Profile> createState() => _Profession_ProfileState();
}

final TextEditingController _areaController = TextEditingController();
// final TextEditingController _openingController = TextEditingController();
final TextEditingController _closetimeController = TextEditingController();
final TextEditingController _closedaysController = TextEditingController();

class _Profession_ProfileState extends State<Profession_Profile> {
  String? dayValue;
  List<String> day = [
    "Sunday",
    "Monday",
    "Tuesday",
    "Wednesday",
    "Thursday",
    "Friday",
    "Saturday",
  ];

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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Gap(25),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 50),
              child: Text(
                "Business / Profession Profile",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Area in square feet',
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ),
            const Gap(10),
            My_TextFiled(controller: _areaController),
            const SizedBox(
              height: 20,
            ),
            const Row(
              // mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  child: Text(
                    'Opening Time',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 70),
                  child: Text(
                    'Closing Time',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ),
              ],
            ),
            const Gap(10),
            Row(
              children: [
                text_filed(controller: _closetimeController),
              ],
            ),
            const Gap(20),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Close Days',
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ),
            const Gap(10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                height: 60,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 1),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: DropdownButton<String>(
                  value: dayValue,
                  icon: Icon(Icons.keyboard_arrow_down),
                  isExpanded: true,
                  underline: SizedBox(),
                  style: TextStyle(color: Colors.black, fontSize: 18),
                  onChanged: (newValue) {
                    setState(() {
                      dayValue = newValue;
                    });
                  },
                  items: day.map((valueItem) {
                    return DropdownMenuItem<String>(
                      value: valueItem,
                      child: Text(valueItem),
                    );
                  }).toList(),
                ),
              ),
            ),
            const Gap(15),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Description',
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ),
            const Gap(10),
            textfield(controller: _areaController),
            const Gap(15),
            Padding(
              padding: const EdgeInsets.only(left: 240),
              child: MyButton(
                onTap: () {
                  Get.toNamed('/upload_store');
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
