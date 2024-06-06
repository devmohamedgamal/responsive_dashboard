import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader({super.key, required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: const ShapeDecoration(
            color: Color(0xFFFAFAFA),
            shape: OvalBorder(),
          ),
          child: Center(
              child: SvgPicture.asset(
            image,
            color: const Color(0xff4EB7F2),
          )),
        ),
        const Spacer(),
        const Icon(
          Icons.arrow_forward_ios_outlined,
          color: Color(
            0xff064061,
          ),
        ),
      ],
    );
  }
}
