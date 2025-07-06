import 'package:cmc_store/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';

class CCircularIcon extends StatelessWidget {
  const CCircularIcon({
    super.key,
    required this.icon,
    this.width,
    this.height,
    this.size = CSizes.lg,
    this.color,
    this.onPressed,
    this.backgroundColor,
  });

  final double? width, height, size;
  final IconData icon;
  final Color? color;
  final Color? backgroundColor;
  final VoidCallback? onPressed;


  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: backgroundColor ??
            (CHelperFunctions.isDarkMode(context)
                ? CColors.white.withOpacity(0.1)
                : CColors.dark.withOpacity(0.1)),
        borderRadius: BorderRadius.circular(100),
      ),
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(icon, color: color, size: size),
      ),
    );
  }
}
