import 'package:cmc_food/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';

class CTermsAndConditionCheckbox extends StatefulWidget {
  const CTermsAndConditionCheckbox({super.key});

  @override
  State<CTermsAndConditionCheckbox> createState() => _CTermsAndConditionCheckboxState();
}

class _CTermsAndConditionCheckboxState extends State<CTermsAndConditionCheckbox> {
  bool _isAgreed = false;

  @override
  Widget build(BuildContext context) {
    final dark = CHelperFunctions.isDarkMode(context);

    return Row(
      children: [
        SizedBox(
          width: 24,
          height: 24,
          child: Checkbox(
            value: _isAgreed,
            onChanged: (value) {
              setState(() {
                _isAgreed = value ?? false;
              });
            },
          ),
        ),
        const SizedBox(width: CSizes.spaceBtwItems),
        Expanded(
          child: Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: CTexts.iAgreeTo,
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                TextSpan(
                  text: CTexts.privacyPolicy,
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: dark ? CColors.white : CColors.primary,
                    decoration: TextDecoration.underline,
                  ),
                ),
                TextSpan(
                  text: CTexts.and,
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                TextSpan(
                  text: CTexts.termsOfUse,
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: dark ? CColors.white : CColors.primary,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
