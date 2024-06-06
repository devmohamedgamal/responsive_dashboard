import 'package:flutter/material.dart';

// Models
import '../models/all_expenses_item_model.dart';

// Utils
import '../utils/styles.dart';

class AllExpensesItemDetails extends StatelessWidget {
  const AllExpensesItemDetails({super.key, required this.item});
  final AllExpensesItemModel item;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          item.title,
          style: Styles.styleSemiBold16,
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          item.date,
          style: Styles.styleRegular14,
        ),
        const SizedBox(
          height: 16,
        ),
        Text(
          "\$${item.amount}",
          style: Styles.styleSemiBold24,
        ),
      ],
    );
  }
}
