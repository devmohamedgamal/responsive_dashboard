import 'package:flutter/material.dart';

// Models
import '../models/all_expenses_item_model.dart';

// Widgets
import 'all_expenses_item_details.dart';
import 'all_expenses_item_header.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem({super.key, required this.item});
  final AllExpensesItemModel item;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      splashColor: const Color(0xFF4DB7F2),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            side: const BorderSide(width: 1, color: Color(0xFFF1F1F1)),
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AllExpensesItemHeader(image: item.image),
            const SizedBox(
              height: 34,
            ),
            AllExpensesItemDetails(
              item: item,
            ),
          ],
        ),
      ),
    );
  }
}
