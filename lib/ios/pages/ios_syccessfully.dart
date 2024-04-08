import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/colors.dart';

// import 'package:ios_pro_deal/componet/colors.dart';
// import 'package:ios_pro_deal/pages/ios_verify.dart';

class ios_successfully extends StatefulWidget {
  const ios_successfully({super.key});

  @override
  State<ios_successfully> createState() => _ios_successfullyState();
}

class _ios_successfullyState extends State<ios_successfully> {
  @override
  Widget build(BuildContext context) {
    double hit = MediaQuery.of(context).size.height;
    double wid = MediaQuery.of(context).size.width;
    return CupertinoPageScaffold(
        child: Container(
      height: hit,
      width: wid,
      color: AppColor.primary,
      child: Column(
        children: [
          Expanded(
            flex: 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        // Navigator.pushReplacement(context,
                        //     MaterialPageRoute(builder: (_) => ios_verify()));
                      },
                      icon: const Icon(
                        Icons.arrow_back,
                        color: Colors.black,
                      ),
                    ),
                    const Gap(60),
                    Text(
                      'Create Account',
                      style: GoogleFonts.inter(
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            flex: 7,
            child: Container(
              height: hit / 1.25,
              width: wid,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(120),
                ),
              ),
              child: Form(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Gap(hit / 15),
                      Image.asset("assets/images/undraw_completed_m9ci 1.png"),
                      Gap(hit / 15),
                      Text(
                        "Successfully",
                        style: GoogleFonts.inter(
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                        ),
                      ),
                      const Gap(20),
                      Text(
                        "Your Account Has been\n Created",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.roboto(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                        ),
                      ),
                      const Gap(30),
                      GestureDetector(
                        onTap: () {
                          // Navigator.pushReplacement(
                          //     context,
                          //     MaterialPageRoute(
                          //         builder: (_) => ios_successfully()));
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
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const Gap(30),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    ));
  }
}
