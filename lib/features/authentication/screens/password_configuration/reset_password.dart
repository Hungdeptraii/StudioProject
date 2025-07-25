import 'package:cmc_food/features/authentication/screens/login/login.dart';
import 'package:cmc_food/utils/constants/text_strings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../utils/constants/image_string.dart';
import '../../../../utils/helpers/helper_functions.dart';
import '../../../../utils/constants/sizes.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () => Get.back(),
            icon: const Icon(CupertinoIcons.clear),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(CSizes.defaultSpace),
          child: Column(
            children: [
              Image(
                image: AssetImage(CImages.deliveredEmailIllustration),
                width: CHelperFunctions.screenWidth() * 0.6,
              ),
              const SizedBox(height: CSizes.spaceBtwSections),

              /// Title & SubTitle
              Text(
                CTexts.changeYourPasswordTitle,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: CSizes.spaceBtwItems),
              Text(
                CTexts.changeYourPasswordSubTitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: CSizes.spaceBtwItems),

              /// Done Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => Get.to(() => const LoginScreen()),
                  child: const Text(CTexts.done),
                ),
              ),
              const SizedBox(height: CSizes.spaceBtwItems),

              /// Resend Email Button
              SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: () {},
                  child: const Text(CTexts.resendEmail),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}