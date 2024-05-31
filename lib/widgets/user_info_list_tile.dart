import 'package:flutter/material.dart';

// Packages
import 'package:flutter_svg/flutter_svg.dart';

// utils
import '../utils/styles.dart';

class UserInfoListTile extends StatelessWidget {
  const UserInfoListTile(
      {super.key,
      required this.image,
      required this.title,
      required this.subTitle});
  final String image, title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xFFFAFAFA),
      elevation: 0,
      child: ListTile(
          leading: SvgPicture.asset(image),
          title: Text(
            title,
            style: Styles.styleSemiBold16,
          ),
          subtitle: Text(
            subTitle,
            style: Styles.styleRegular12,
          )),
    );
  }
}
