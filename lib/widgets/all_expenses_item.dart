import 'package:flutter/material.dart';

// Models
import '../models/all_expenses_item_model.dart';

// Widgets
import 'in_active_and_active_allexpenses_item.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem(
      {super.key, required this.item, this.isSelected = false});
  final AllExpensesItemModel item;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return isSelected
        ? ActiveAllExpensesItem(item: item)
        : InActiveAllExpensesItem(item: item);
  }
}
