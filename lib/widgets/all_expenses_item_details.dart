import 'package:flutter/material.dart';

// Models
import '../models/all_expenses_item_model.dart';

// Utils
import '../utils/styles.dart';

class AllExpensesItemDetails extends StatelessWidget {
  const AllExpensesItemDetails(
      {super.key, required this.item, this.isSelected = false});
  final AllExpensesItemModel item;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          item.title,
          style: isSelected
              ? Styles.styleSemiBold16.copyWith(color: Colors.white)
              : Styles.styleSemiBold16,
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          item.date,
          style: isSelected
              ? Styles.styleRegular14.copyWith(color: Colors.white)
              : Styles.styleRegular14,
        ),
        const SizedBox(
          height: 16,
        ),
        Text(
          "\$${item.amount}",
          style: isSelected
              ? Styles.styleSemiBold24.copyWith(color: Colors.white)
              : Styles.styleSemiBold24,
        ),
      ],
    );
  }
}
