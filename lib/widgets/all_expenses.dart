import 'package:flutter/material.dart';

// Widgets
import 'all_expenses_items_list_view.dart';
import 'all_expenses_title.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: const Column(
        children: [
          AllExpensesTitle(),
          SizedBox(
            height: 20,
          ),
          AllExpensesItemsListView(),
        ],
      ),
    );
  }
}
