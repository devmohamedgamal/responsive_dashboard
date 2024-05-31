import 'package:flutter/material.dart';

// Views
import 'views/dashboard_view.dart';

void main() {
  runApp(const ResponsiveDashboard());
}

class ResponsiveDashboard extends StatelessWidget {
  const ResponsiveDashboard({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Responsive Dashboard',
      home: DashboardView(),
    );
  }
}
