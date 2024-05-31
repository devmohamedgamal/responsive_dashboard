import 'package:flutter/material.dart';

// Widgets
import 'custom_drwer.dart';
import 'all_expenses.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        Expanded(
          flex: 2,
          child: Column(
            children: [
              AllExpenses(),
            ],
          ),
        ),
      ],
    );
  }
}
