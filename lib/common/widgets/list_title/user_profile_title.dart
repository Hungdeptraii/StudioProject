import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/image_string.dart';
import '../images/c_circlar_image.dart';

class CUserProfileTitle extends StatelessWidget {
  const CUserProfileTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CCircularImage(image: CImages.user, width: 50, height: 50, padding: 0),
      title: Text('Trần Ngọc Hùng', style: Theme.of(context).textTheme.headlineSmall!.apply(color: CColors.white)),
      subtitle: Text('ngchung@gmail.com', style: Theme.of(context).textTheme.bodyMedium!.apply(color: CColors.white)),
      trailing: IconButton(onPressed: (){}, icon: const Icon(Iconsax.edit, color: CColors.white)),
    );
  }
}
