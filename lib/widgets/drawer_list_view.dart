import 'package:flutter/material.dart';

// Models
import '../models/drawer_item_model.dart';

// Utils
import '../utils/assets_manger.dart';

// Widgets
import 'drawer_item.dart';

class DrawerListView extends StatefulWidget {
  const DrawerListView({super.key});

  @override
  State<DrawerListView> createState() => _DrawerListViewState();
}

class _DrawerListViewState extends State<DrawerListView> {
  int activeIndex = 0;
  final List<DrawerItemModel> drawerItems = [
    const DrawerItemModel(
      title: 'Dashboard',
      image: AssetsManger.imagesDashboard,
    ),
    const DrawerItemModel(
      title: 'My Transaction',
      image: AssetsManger.imagesTransactions,
    ),
    const DrawerItemModel(
      title: 'Statistics',
      image: AssetsManger.imagesStatiscs,
    ),
    const DrawerItemModel(
      title: 'Wallet Account',
      image: AssetsManger.imagesWallet,
    ),
    const DrawerItemModel(
      title: 'My Investments',
      image: AssetsManger.imagesInvestment,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      key: ValueKey<int>(activeIndex),
      itemCount: drawerItems.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            if (activeIndex != index) {
              setState(() {
                activeIndex = index;
              });
            }
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: DrawerItem(
              drawerItemModel: drawerItems[index],
              isActive: activeIndex == index,
            ),
          ),
        );
      },
    );
  }
}
