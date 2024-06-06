import 'package:flutter/material.dart';

// Widgets
import 'all_expenses_item.dart';
// Models
import '../models/all_expenses_item_model.dart';
// Utils
import '../utils/assets_manger.dart';

class AllExpensesItemsListView extends StatelessWidget {
  const AllExpensesItemsListView({super.key});

  static const items = [
    AllExpensesItemModel(
      image: AssetsManger.imagesBalance,
      title: 'Balance',
      date: 'April 2022',
      amount: 20.129,
    ),
    AllExpensesItemModel(
      image: AssetsManger.imagesIncome,
      title: 'Income',
      date: 'April 2022',
      amount: 20.129,
    ),
    AllExpensesItemModel(
      image: AssetsManger.imagesExpenses,
      title: 'Expenses',
      date: 'April 2022',
      amount: 20.129,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      // children: items
      //     .map(
      //       (e) => Expanded(
      //         child: Padding(
      //           padding: const EdgeInsets.only(right: 16),
      //           child: AllExpensesItem(item: e),
      //         ),
      //       ),
      //     )
      //     .toList(),
      children: items.asMap().entries.map((e) {
        int index = e.key;
        var item = e.value;
        return Expanded(
          child: Padding(
            padding: index == 1
                ? const EdgeInsets.symmetric(horizontal: 12)
                : const EdgeInsets.all(0),
            child: AllExpensesItem(item: item),
          ),
        );
      }).toList(),
    );
  }
}
