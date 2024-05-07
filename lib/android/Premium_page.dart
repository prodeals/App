import 'dart:convert';

import 'package:crypto/crypto.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:phonepe_payment_sdk/phonepe_payment_sdk.dart';
import 'package:pro_deals1/utils/colors.dart';

class premium_page extends StatefulWidget {
  const premium_page({super.key});

  @override
  State<premium_page> createState() => _premium_pageState();
}

class _premium_pageState extends State<premium_page> {
  String environment = "SANDBOX";
  String appId = "";
  String merchantId = "PGTESTPAYUAT";
  bool enableLogging = true;
  String checksum = "";

  String saltkey = "099eb0cd-02cf-4e2a-8aca-3e6c6aff0399";

  String saltindex = "1";

  String callback = "";

  String body = "";
  String apiEndPoint = "/pg/v1/pay";

  Object? result;

  getChecksum() {
    final reqData = {
      "merchantId": merchantId,
      "merchantTransactionId": "MT7850590068188104",
      "merchantUserId": "MUID123",
      "amount": 10000,
      "callbackUrl": "https://webhook.site/callback-url",
      "mobileNumber": "9999999999",
      "paymentInstrument": {"type": "PAY_PAGE"}
    };

    String base64body = base64.encode(utf8.encode(json.encode(reqData)));

    checksum =
        "${sha256.convert(utf8.encode(base64body + apiEndPoint + saltkey)).toString()}###$saltindex";

    return base64body;
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    phonepeInit();

    body = getChecksum().toString();
  }

  @override
  Widget build(BuildContext context) {
    double hit = MediaQuery.of(context).size.height;
    double wid = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.primary,
        title: Text(
          'CHOOSE YOUR PLAN',
          style: GoogleFonts.roboto(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
        actions: [
          IconButton(
              onPressed: () {}, icon: Icon(Icons.notifications_active_outlined))
        ],
      ),
      body: Container(
        height: hit,
        width: wid,
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Container(
              height: hit / 4,
              width: wid,
              decoration: BoxDecoration(
                color: AppColor.black300,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(hit / 10),
                  bottomRight: Radius.circular(hit / 10),
                ),
              ),
              child: Stack(
                children: [
                  Positioned(
                    child: Container(
                      width: wid / 2.3,
                      height: hit / 8,
                      decoration: BoxDecoration(
                        color: AppColor.primary,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(hit / 10),
                          bottomRight: Radius.circular(hit / 10),
                        ),
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        'Basic',
                        style: GoogleFonts.roboto(
                          fontWeight: FontWeight.bold,
                          color: AppColor.white,
                          fontSize: 22,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: '\$0/',
                              style: GoogleFonts.roboto(
                                fontWeight: FontWeight.bold,
                                fontSize: 30,
                              ),
                            ),
                            TextSpan(
                              text: 'mon',
                              style: GoogleFonts.roboto(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    right: 0,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20, right: 20),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Transform.rotate(
                                child: Icon(
                                  Icons.add_circle_outline,
                                  color: AppColor.primary,
                                  size: 16,
                                ),
                                angle: 40,
                              ),
                              Text(
                                'Lorem ipsum dolor',
                                style: GoogleFonts.roboto(
                                  fontWeight: FontWeight.w400,
                                  color: AppColor.white,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Transform.rotate(
                                child: Icon(
                                  Icons.add_circle_outline,
                                  color: AppColor.primary,
                                  size: 16,
                                ),
                                angle: 40,
                              ),
                              Text(
                                'Lorem ipsum dolor',
                                style: GoogleFonts.roboto(
                                  fontWeight: FontWeight.w400,
                                  color: AppColor.white,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.check_circle_outline,
                                color: AppColor.primary,
                                size: 16,
                              ),
                              Text(
                                'Lorem ipsum dolor',
                                style: GoogleFonts.roboto(
                                  fontWeight: FontWeight.w400,
                                  color: AppColor.white,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 12.0, right: 20),
                      child: GestureDetector(
                        onTap: () {
                          startPgTransaction();

                          print(result);
                        },
                        child: Row(
                          children: [
                            Text(
                              'CHOOSE PLAN',
                              style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w500,
                                color: AppColor.primary,
                                fontSize: 16,
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.arrow_forward_ios_outlined,
                                color: AppColor.primary,
                                size: 20,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Gap(20),
            Container(
              height: hit / 4,
              width: wid,
              decoration: BoxDecoration(
                color: AppColor.black300,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(hit / 10),
                  bottomRight: Radius.circular(hit / 10),
                ),
              ),
              child: Stack(
                children: [
                  Positioned(
                    child: Container(
                      width: wid / 2.3,
                      height: hit / 8,
                      decoration: BoxDecoration(
                        color: AppColor.primary,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(hit / 10),
                          bottomRight: Radius.circular(hit / 10),
                        ),
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        'Standrad',
                        style: GoogleFonts.roboto(
                          fontWeight: FontWeight.bold,
                          color: AppColor.white,
                          fontSize: 22,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: '\$30/',
                              style: GoogleFonts.roboto(
                                fontWeight: FontWeight.bold,
                                fontSize: 30,
                              ),
                            ),
                            TextSpan(
                              text: 'mon',
                              style: GoogleFonts.roboto(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    right: 0,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20, right: 20),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Transform.rotate(
                                child: Icon(
                                  Icons.add_circle_outline,
                                  color: AppColor.primary,
                                  size: 16,
                                ),
                                angle: 40,
                              ),
                              Text(
                                'Lorem ipsum dolor',
                                style: GoogleFonts.roboto(
                                  fontWeight: FontWeight.w400,
                                  color: AppColor.white,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Transform.rotate(
                                child: Icon(
                                  Icons.add_circle_outline,
                                  color: AppColor.primary,
                                  size: 16,
                                ),
                                angle: 40,
                              ),
                              Text(
                                'Lorem ipsum dolor',
                                style: GoogleFonts.roboto(
                                  fontWeight: FontWeight.w400,
                                  color: AppColor.white,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.check_circle_outline,
                                color: AppColor.primary,
                                size: 16,
                              ),
                              Text(
                                'Lorem ipsum dolor',
                                style: GoogleFonts.roboto(
                                  fontWeight: FontWeight.w400,
                                  color: AppColor.white,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 12.0, right: 20),
                      child: GestureDetector(
                        onTap: () {
                          startPgTransaction();
                        },
                        child: Row(
                          children: [
                            Text(
                              'CHOOSE PLAN',
                              style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w500,
                                color: AppColor.primary,
                                fontSize: 16,
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.arrow_forward_ios_outlined,
                                color: AppColor.primary,
                                size: 20,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Gap(20),
            Container(
              height: hit / 4,
              width: wid,
              decoration: BoxDecoration(
                color: AppColor.black300,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(hit / 10),
                  bottomRight: Radius.circular(hit / 10),
                ),
              ),
              child: Stack(
                children: [
                  Positioned(
                    child: Container(
                      width: wid / 2.3,
                      height: hit / 8,
                      decoration: BoxDecoration(
                        color: AppColor.primary,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(hit / 10),
                          bottomRight: Radius.circular(hit / 10),
                        ),
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        'Premium',
                        style: GoogleFonts.roboto(
                          fontWeight: FontWeight.bold,
                          color: AppColor.white,
                          fontSize: 22,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: '\$40/',
                              style: GoogleFonts.roboto(
                                fontWeight: FontWeight.bold,
                                fontSize: 30,
                              ),
                            ),
                            TextSpan(
                              text: 'mon',
                              style: GoogleFonts.roboto(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    right: 0,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20, right: 20),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Transform.rotate(
                                child: Icon(
                                  Icons.add_circle_outline,
                                  color: AppColor.primary,
                                  size: 16,
                                ),
                                angle: 40,
                              ),
                              Text(
                                'Lorem ipsum dolor',
                                style: GoogleFonts.roboto(
                                  fontWeight: FontWeight.w400,
                                  color: AppColor.white,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Transform.rotate(
                                child: Icon(
                                  Icons.add_circle_outline,
                                  color: AppColor.primary,
                                  size: 16,
                                ),
                                angle: 40,
                              ),
                              Text(
                                'Lorem ipsum dolor',
                                style: GoogleFonts.roboto(
                                  fontWeight: FontWeight.w400,
                                  color: AppColor.white,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.check_circle_outline,
                                color: AppColor.primary,
                                size: 16,
                              ),
                              Text(
                                'Lorem ipsum dolor',
                                style: GoogleFonts.roboto(
                                  fontWeight: FontWeight.w400,
                                  color: AppColor.white,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 12.0, right: 20),
                      child: GestureDetector(
                        onTap: () {
                          startPgTransaction();
                          print("result : $result");
                        },
                        child: Row(
                          children: [
                            Text(
                              'CHOOSE PLAN',
                              style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w500,
                                color: AppColor.primary,
                                fontSize: 16,
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.arrow_forward_ios_outlined,
                                color: AppColor.primary,
                                size: 20,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Gap(20),
          ],
        ),
      ),
    );
  }

  void phonepeInit() {
    PhonePePaymentSdk.init(environment, appId, merchantId, enableLogging)
        .then((val) => {
              setState(() {
                result = 'PhonePe SDK Initialized - $val';
                print(result);
              })
            })
        .catchError((error) {
      handleError(error);
      return <dynamic>{};
    });
  }

  void startPgTransaction() async {
    try {
      print("this is $body");
      PhonePePaymentSdk.startTransaction(body, callback, checksum, "")
          .then((response) => {
                setState(() {
                  if (response != null) {
                    String status = response['status'].toString();
                    String error = response['error'].toString();
                    if (status == 'SUCCESS') {
                      result = "Flow Completed - Status: Success!";
                    } else {
                      result =
                          "Flow Completed - Status: $status and Error: $error";
                    }
                  } else {
                    result = "Flow Incomplete";
                  }
                })
              })
          .catchError((error) {
        handleError(error);
        return <dynamic>{};
      });
    } catch (error) {
      handleError(error);
    }
  }

  void handleError(error) {
    setState(() {
      result = {"error": error};
    });
  }
}
