import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader(
      {super.key, required this.image, this.isSelected = false});
  final String image;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: ShapeDecoration(
            color: isSelected
                ? const Color(0xFFFAFAFA).withOpacity(.1)
                : const Color(0xFFFAFAFA),
            shape: const OvalBorder(),
          ),
          child: Center(
            child: SvgPicture.asset(
              image,
              colorFilter: ColorFilter.mode(
                isSelected ? Colors.white : const Color(0xff4EB7F2),
                BlendMode.srcIn,
              ),
            ),
          ),
        ),
        const Spacer(),
        Icon(
          Icons.arrow_forward_ios_outlined,
          color: isSelected
              ? Colors.white
              : const Color(
                  0xff064061,
                ),
        ),
      ],
    );
  }
}
