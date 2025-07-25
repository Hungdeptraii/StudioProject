import 'package:cmc_food/common/styles/spacing_styles.dart';

import 'package:flutter/material.dart';

import '../../../utils/constants/sizes.dart';
import '../../../utils/constants/text_strings.dart';
import '../../../utils/helpers/helper_functions.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key, required this.image, required this.title, required this.subTitle, required this.onPressed});

  final String  image, title, subTitle;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
            padding: CSpacingStyle.paddingWithAppBarHeight * 2,
            child: Column(
            children: [
              ///Image
            Image(
              image:  AssetImage(image), width: CHelperFunctions.screenWidth() * 0.6,),
              const SizedBox(height: CSizes.spaceBtwSections),

            ///Title & SubTitle
            Text(title, style: Theme.of(context).textTheme.headlineMedium, textAlign: TextAlign.center),
            const SizedBox(height: CSizes.spaceBtwItems),
            Text(subTitle, style: Theme.of(context).textTheme.labelMedium, textAlign: TextAlign.center),
            const SizedBox(height: CSizes.spaceBtwItems),

          ///Buttons
          SizedBox(
              width: double.infinity,
              child: ElevatedButton(onPressed: onPressed, child: const Text(CTexts.cContinue)),
          ),
          ],
        ),
        ),
      ),

    );
  }
}