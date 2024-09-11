import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gap/gap.dart';
import '../utils/colors.dart';
import '../utils/constunt.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Cart'),
        centerTitle: true,
        backgroundColor: AppColor.primary,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView.builder(
          itemCount: orders.length,
          itemBuilder: (context, index) {
            final order = orders[index];
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 4),
              child: Slidable(
                key: ValueKey(order),
                endActionPane: ActionPane(
                  motion: const DrawerMotion(),
                  children: [
                    SlidableAction(
                      onPressed: (context) => _confirmDelete(context, order),
                      backgroundColor: Colors.red,
                      foregroundColor: Colors.white,
                      icon: Icons.delete,
                      label: 'Delete',
                    ),
                  ],
                ),
                child: _buildListTile(order),
              ),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _showBottomSheet(context),
        child: Icon(Icons.book, color: AppColor.primary),
        backgroundColor: AppColor.white,
      ),
    );
  }

  void _showBottomSheet(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;

    Get.bottomSheet(
      Container(
        padding: const EdgeInsets.all(16),
        width: width,
        decoration: const BoxDecoration(color: Color(0xFFF9F9F9)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text('Promocode', style: TextStyle(fontSize: 18)),
                Spacer(),
                InkWell(
                  onTap: () => Get.toNamed("/Coupons"),
                  child: Text("Your Coupons", style: TextStyle(color: Colors.green)),
                ),
              ],
            ),
            const Gap(10),
            Row(
              children: [
                Expanded(
                  child: Card(
                    margin: EdgeInsets.zero,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 14),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'BECODER34FR',
                          fillColor: AppColor.white,
                        ),
                      ),
                    ),
                  ),
                ),
                const Gap(10),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColor.primary,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6),
                    ),
                  ),
                  onPressed: () {
                    // Handle apply action
                  },
                  child: Text('Apply', style: TextStyle(color: AppColor.white)),
                ),
              ],
            ),
            const Gap(20),
            _buildSummaryRow('Sub Total', '₹ 240'),
            _buildSummaryRow('Tax & Fees', '+ ₹ 20', color: Colors.red),
            _buildSummaryRow('Delivery Charge', '+ ₹ 40', color: Colors.red),
            _buildSummaryRow('Discount price', '- ₹ 60', color: Colors.green),
            const Gap(20),
            _buildSummaryRow('Total', '₹ 240', isBold: true),
            const Gap(20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColor.primary,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                minimumSize: Size(width, 50),
              ),
              onPressed: () {
                // Handle checkout action
              },
              child: Text(
                'Checkout',
                style: TextStyle(
                  color: AppColor.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _confirmDelete(BuildContext context, Map<String, dynamic> order) {
    Get.defaultDialog(
      title: 'Confirm Deletion',
      middleText: 'Are you sure you want to delete this item?',
      textConfirm: 'Delete',
      textCancel: 'Cancel',
      onConfirm: () {
        // Perform the delete operation
        // Example: orders.remove(order);
        Get.back(); // Close the dialog
      },
      onCancel: () {
        Get.back(); // Close the dialog
      },
    );
  }

  Widget _buildSummaryRow(String title, String value, {Color color = Colors.black, bool isBold = false}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: GoogleFonts.openSans(
            fontSize: 16,
            fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
          ),
        ),
        Text(
          value,
          style: GoogleFonts.openSans(
            fontSize: 16,
            color: color,
            fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
          ),
        ),
      ],
    );
  }

  Widget _buildListTile(Map<String, dynamic> order) {
    return Card(
      color: AppColor.white,
      child: ListTile(
        leading: Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(order['imageUrl'] ?? 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSb-qzol9i3_jBlvmuTrYK0LhMMqe08oFPLmg&s'),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        title: Text(order['name']),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('${order['quantity']} x ₹ ${order['prize']}'),
            const Gap(4),
            Container(
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: AppColor.gray.withOpacity(0.1),
              ),
              padding: const EdgeInsets.all(6),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildQuantityButton(Icons.remove),
                  Text('${order['quantity']}'),
                  _buildQuantityButton(Icons.add, color: AppColor.primary),
                ],
              ),
            ),
          ],
        ),
        trailing: Text(
          '₹ ${order['prize'] * order['quantity']}',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }

  Widget _buildQuantityButton(IconData icon, {Color color = Colors.black}) {
    return Container(
      height: 30,
      width: 30,
      decoration: BoxDecoration(
        color: AppColor.white,
        borderRadius: BorderRadius.circular(6),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 2,
            offset: const Offset(2, 2),
          ),
        ],
      ),
      child: Icon(icon, color: color),
    );
  }
}
