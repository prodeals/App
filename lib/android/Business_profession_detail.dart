import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

import '../widget/imagepicker.dart';
import '../widget/my_button.dart';
import '../widget/my_textfield.dart';

class Profession_details extends StatefulWidget {
  const Profession_details({Key? key}) : super(key: key);

  @override
  State<Profession_details> createState() => _Profession_detailsState();
}

final TextEditingController _GSTController = TextEditingController();
final TextEditingController _panController = TextEditingController();

class _Profession_detailsState extends State<Profession_details> {
  bool isChecked = false;

  String? categoryeValue;
  List<String> category = ["Food", "F"];

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
              Get.toNamed('/Business_Address');
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
              const Center(
                child: Text(
                  "Business / Profession Details",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              const Gap(20),
              Text(
                'Category',
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
                  value: categoryeValue,
                  icon: const Icon(Icons.keyboard_arrow_down),
                  isExpanded: true,
                  underline: const SizedBox(),
                  style: const TextStyle(color: Colors.black, fontSize: 18),
                  onChanged: (newValue) {
                    setState(() {
                      categoryeValue = newValue;
                    });
                  },
                  items: category.map((valueItem) {
                    return DropdownMenuItem<String>(
                      value: valueItem,
                      child: Text(valueItem),
                    );
                  }).toList(),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'GST Number',
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
              const Gap(10),
              My_TextFiled(controller: _GSTController),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Pan Number',
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
              const Gap(10),
              My_TextFiled(controller: _panController),
              const Gap(20),
              Text(
                'Business / Profession Proof',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              const Gap(20),
              const Center(child: ImagePickerContainer()),
              const Gap(20),
              Row(
                children: [
                  Transform.scale(
                    scale: 1.2,
                    child: Checkbox(
                        checkColor: Colors.white,
                        activeColor: Colors.amber,
                        value: isChecked,
                        onChanged: (bool? value) {
                          setState(() {
                            isChecked = value!;
                          });
                        }),
                  ),
                  const Text(
                    "I have Multiple store",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              const Gap(15),
              Padding(
                padding: const EdgeInsets.only(left: 240),
                child: MyButton(
                  onTap: () {
                    Get.toNamed('/Profession_Profile');
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
