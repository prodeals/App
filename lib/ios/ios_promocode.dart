import 'package:flutter/cupertino.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pro_deals1/utils/colors.dart';

class ios_promocode extends StatelessWidget {
  const ios_promocode({super.key});

  @override
  Widget build(BuildContext context) {
    double hit = MediaQuery.of(context).size.height;
    double wid = MediaQuery.of(context).size.width;
    return CupertinoPageScaffold(
      child: Container(
        height: hit,
        width: wid,
        color: AppColor.white,
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Gap(hit / 26),
            Center(
              child: Text(
                'Promocode',
                style: GoogleFonts.openSans(
                  color: AppColor.black300,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            const Gap(20),
          ],
        ),
      ),
    );
  }
}
