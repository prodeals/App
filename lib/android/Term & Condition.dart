import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:pro_deals1/utils/colors.dart';

class Term_condition extends StatefulWidget {
  const Term_condition({super.key});

  @override
  State<Term_condition> createState() => _Term_conditionState();
}

class _Term_conditionState extends State<Term_condition> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Term & Condition",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: AppColor.primary,
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Gap(20),
              Text(
                "General site usage last revlsed \nDecember 12-01-2020",
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
              Gap(10),
              Text(
                "1. Agreement",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Gap(10),
              Text(
                "They described who they were in a single line on the headings. They welcome their visitors by personalizing their website with a refreshing visual.",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Colors.grey,
                ),
              ),
              Gap(10),
              Text(
                "1. Account",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Gap(10),
              Text(
                "They described who they were in a single line on the headings. They welcome their visitors by personalizing their website with a refreshing visual.",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey),
              ),
              Gap(10),
              Text(
                "1. RelationShip With Groceries",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Gap(10),
              Text(
                "They described who they were in a single line on the headings. They welcome their visitors by personalizing their website with a refreshing visual.",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
