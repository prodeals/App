import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

import '../widget/my_button.dart';
import '../widget/my_textfield.dart';

class B_Address extends StatefulWidget {
  B_Address({Key? key}) : super(key: key);

  @override
  State<B_Address> createState() => _B_AddressState();
}

final TextEditingController _pincodeController = TextEditingController();
final TextEditingController _addressController = TextEditingController();

class _B_AddressState extends State<B_Address> {
  String? countryValue;
  List<String> country = ["India", "Canada"];

  String? stateValue;
  List<String> state = ["Gujarat", "MP"];

  String? cityValue;
  List<String> city = ["Surat", "Kim"];

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
            Get.toNamed('/create_business');
          },
          icon: const Icon(Icons.arrow_back),
        ),
        backgroundColor: const Color.fromARGB(255, 214, 170, 38),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Gap(25),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 150),
              child: Text(
                "Address",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Country',
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ),
            Gap(10),
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
                  value: countryValue,
                  icon: Icon(Icons.keyboard_arrow_down),
                  isExpanded: true,
                  underline: SizedBox(),
                  style: TextStyle(color: Colors.black, fontSize: 18),
                  onChanged: (newValue) {
                    setState(() {
                      countryValue = newValue;
                    });
                  },
                  items: country.map((valueItem) {
                    return DropdownMenuItem<String>(
                      value: valueItem,
                      child: Text(valueItem),
                    );
                  }).toList(),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'State',
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ),
            Gap(10),
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
                  value: stateValue,
                  icon: Icon(Icons.keyboard_arrow_down),
                  isExpanded: true,
                  underline: SizedBox(),
                  style: TextStyle(color: Colors.black, fontSize: 18),
                  onChanged: (newValue) {
                    setState(() {
                      stateValue = newValue;
                    });
                  },
                  items: state.map((valueItem) {
                    return DropdownMenuItem<String>(
                      value: valueItem,
                      child: Text(valueItem),
                    );
                  }).toList(),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'City',
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ),
            Gap(10),
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
                  value: cityValue,
                  icon: Icon(Icons.keyboard_arrow_down),
                  isExpanded: true,
                  underline: SizedBox(),
                  style: TextStyle(color: Colors.black, fontSize: 18),
                  onChanged: (newValue) {
                    setState(() {
                      cityValue = newValue;
                    });
                  },
                  items: city.map((valueItem) {
                    return DropdownMenuItem<String>(
                      value: valueItem,
                      child: Text(valueItem),
                    );
                  }).toList(),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'PinCode',
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ),
            Gap(10),
            My_TextFiled(controller: _pincodeController),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Address',
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ),
            Gap(10),
            My_TextFiled(controller: _addressController),
            const Gap(30),
            Padding(
              padding: EdgeInsets.only(left: 240),
              child: MyButton(
                onTap: () {
                  Get.toNamed('/Profession_details');
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
