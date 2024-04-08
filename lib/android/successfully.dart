import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class successfully extends StatefulWidget {
  const successfully({super.key});

  @override
  State<successfully> createState() => _successfullyState();
}

class _successfullyState extends State<successfully> {
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
              Get.toNamed('/verify');
            },
            icon: const Icon(Icons.arrow_back)),
        backgroundColor: const Color.fromARGB(255, 214, 170, 38),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 80,
            ),
            Image.asset("assets/image/undraw_completed_m9ci 1.png"),
            const SizedBox(
              height: 50,
            ),
            const Text(
              "Successfully",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Gap(15),
            const Text(
              "Your Account Has been\nCreated.",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 14),
            ),
            Gap(40),
            GestureDetector(
              onTap: () {
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (_) => successfully()));
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
                    "Countinue",
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
    );
  }
}
