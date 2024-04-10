import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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
final TextEditingController _openingController = TextEditingController();
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
              Get.toNamed('/Profession_details');
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Gap(25),
              Center(
                child: Text(
                  "Business / Profession Profile",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              const Gap(20),
              Text(
                'Area in square feet',
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
              const Gap(10),
              My_TextFiled(controller: _areaController),
              const Gap(20),
              Row(
                // mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Text(
                          'Opening Time',
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                        const Gap(10),
                        My_TextFiled(controller: _openingController),
                      ],
                      crossAxisAlignment: CrossAxisAlignment.start,
                    ),
                  ),
                  const Gap(20),
                  Expanded(
                    child: Column(
                      children: [
                        Text(
                          'Closing Time',
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                        const Gap(10),
                        My_TextFiled(controller: _closetimeController),
                      ],
                      crossAxisAlignment: CrossAxisAlignment.start,
                    ),
                  ),
                ],
              ),
              const Gap(20),
              Text(
                'Close Days',
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
              const Gap(10),
              Container(
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
              const Gap(15),
              Text(
                'Description',
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
              const Gap(10),
              textfield(controller: _areaController),
              const Gap(15),
              Align(
                alignment: Alignment.centerRight,
                child: MyButton(
                  onTap: () {
                    Get.toNamed('/upload_store');
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
