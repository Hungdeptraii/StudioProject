import 'package:flutter/material.dart';

import '../../../../../common/widgets/appbar/appbar.dart';
import '../../../../../common/widgets/products/cart/cart_menu_icon.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/text_strings.dart';


class CHomeAppBar extends StatelessWidget {
  const CHomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CAppBar(
      title: Column(
        children: [
          Text(CTexts.homeAppbarTitle,style: Theme.of(context).textTheme.labelMedium!.apply(color: CColors.grey)),
          Text(CTexts.homeAppbarSubTitle,style: Theme.of(context).textTheme.headlineSmall!.apply(color: CColors.white)),

        ],
      ),
      actions: [
        CCartCounterIcon(onPressed: () { }, iconColor: CColors.white)
      ],
    );
  }
}