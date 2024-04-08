import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class MyButton extends StatelessWidget {
  final void Function()? onTap;
  const MyButton({Key? key, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 45,
        width: 120,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 214, 170, 38),
          borderRadius: BorderRadius.circular(8),
        ),
        padding: const EdgeInsets.all(
            12), // Reduced padding for better button appearance
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Next",
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
            Gap(10),
            Icon(
              Icons.arrow_forward_ios_outlined,
              color: Colors.white,
              size: 18,
            ),
          ],
        ),
      ),
    );
  }
}
