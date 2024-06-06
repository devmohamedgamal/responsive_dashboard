import 'package:flutter/material.dart';

// Utils
import '../utils/styles.dart';

// Widgets
import 'drop_down_options.dart';

class AllExpensesTitle extends StatelessWidget {
  const AllExpensesTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'All Expenses',
          style: Styles.styleSemiBold20,
        ),
        DropDownOptions(),
      ],
    );
  }
}
