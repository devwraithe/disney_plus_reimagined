import 'package:disney_plus_reimagined/view/shared/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomIcon extends StatelessWidget {
  final String icon;
  final Color? background, iconColor;
  final EdgeInsetsGeometry? padding;

  const CustomIcon({
    Key? key,
    required this.icon,
    this.background,
    this.iconColor,
    this.padding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return Ink(
    //   decoration: BoxDecoration(
    //     color: background,
    //     borderRadius: BorderRadius.circular(50),
    //   ),
    //   child: IconButton(
    //     padding: padding ?? EdgeInsets.zero,
    //     icon: SvgPicture.asset(
    //       icon,
    //       width: 22,
    //       height: 22,
    //       color: iconColor ?? DPColors.white,
    //     ),
    //     iconSize: 22,
    //     onPressed: () => {},
    //   ),
    // );

    return GestureDetector(
      child: Container(
        padding: padding ?? const EdgeInsets.all(14),
        decoration: BoxDecoration(
          color: background ?? DPColors.gray50,
          borderRadius: BorderRadius.circular(50),
        ),
        child: SvgPicture.asset(
          icon,
          width: 24,
          height: 24,
          color: iconColor ?? DPColors.white,
        ),
      ),
    );
  }
}
