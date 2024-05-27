import 'package:flutter/material.dart';

// Widgets
import '../widgets/adaptive_layout.dart';
import '../widgets/dashboard_desktop_layout.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return AdaptiveLayout(
      mobileLayout: (context) => const SizedBox(),
      tabletLayout: (context) => const SizedBox(),
      desktopLayout: (context) => const DashboardDesktopLayout(),
    );
  }
}