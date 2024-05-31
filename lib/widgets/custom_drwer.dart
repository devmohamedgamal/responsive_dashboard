import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

// Utils
import '../models/drawer_item_model.dart';
import '../utils/assets_manger.dart';

// Widgets
import 'active_and_inActive_item.dart';
import 'drawer_list_view.dart';
import 'user_info_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: const CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: UserInfoListTile(
              image: AssetsManger.imagesProfileIcon,
              title: 'Lekan Okeowo',
              subTitle: "demo@gmail.com",
            ),
          ),
          DrawerListView(),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Spacer(),
                InActiveDrawerItem(
                  drawerItemModel: DrawerItemModel(
                    title: 'Setting system',
                    image: AssetsManger.imagesSetting,
                  ),
                ),
                InActiveDrawerItem(
                  drawerItemModel: DrawerItemModel(
                    title: 'Logout account',
                    image: AssetsManger.imagesLogout,
                  ),
                ),
                SizedBox(height: 48),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
