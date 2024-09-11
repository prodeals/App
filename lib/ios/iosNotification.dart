import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/colors.dart'; // Make sure you have defined your color constants here

class iosNotification extends StatelessWidget {
  const iosNotification({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text(
          'Notifications',
          style: GoogleFonts.openSans(
            fontSize: 20,
            fontWeight: FontWeight.w700,
            color: AppColor.black300,
          ),
        ),
        backgroundColor: AppColor.white,
        trailing: CupertinoButton(
          padding: EdgeInsets.zero,
          onPressed: () {
            // Add action for the clear notifications button
          },
          child: Text(
            'Clear',
            style: GoogleFonts.openSans(
              color: AppColor.primary,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
      child: Container(
        height: height,
        width: width,
        color: AppColor.white,
        child: ListView.builder(
          padding: EdgeInsets.all(16),
          itemCount: 10, // Number of notifications
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 16.0),
              child: Container(
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: AppColor.white,
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: [
                    BoxShadow(
                      color: AppColor.gray.withOpacity(0.2),
                      blurRadius: 4,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    Icon(
                      CupertinoIcons.bell,
                      color: AppColor.primary,
                      size: 24,
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Notification Title ${index + 1}',
                            style: GoogleFonts.openSans(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: AppColor.black300,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            'This is a description of notification ${index + 1}. It provides details about the notification.',
                            style: GoogleFonts.openSans(
                              fontSize: 14,
                              color: AppColor.black300,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 8),
                    Text(
                      '10 min ago', // Example timestamp
                      style: GoogleFonts.openSans(
                        fontSize: 12,
                        color: AppColor.gray,
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
