import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:pro_deals1/utils/colors.dart';

class notification extends StatefulWidget {
  const notification({super.key});

  @override
  State<notification> createState() => _notificationState();
}

class _notificationState extends State<notification> {
  @override
  Widget build(BuildContext context) {
    double hit = MediaQuery.of(context).size.height;
    double wid = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text('Notification'),
        centerTitle: true,
        backgroundColor: AppColor.primary,
      ),
      body: Container(
        height: hit,
        width: wid,
        child: Column(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: TextButton(
                onPressed: () {},
                child: Text('Clear All'),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Card(
                      color: Colors.primaries[index].shade50,
                      elevation: 1,
                      margin: EdgeInsets.all(8),
                      child: ListTile(
                        title: Text(
                          'Hurry! Tomato is now in shop',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Simply dummy text of the printgxt of the and types setting when',
                              style:
                                  TextStyle(fontSize: 12, color: AppColor.gray),
                              overflow: TextOverflow.ellipsis,
                            ),
                            const Gap(6),
                            Text(
                              'Today 12:00AM',
                              style: TextStyle(
                                fontSize: 12,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                        leading: Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                              border:
                                  Border.all(color: AppColor.white, width: 2),
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.primaries[index].shade200),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
