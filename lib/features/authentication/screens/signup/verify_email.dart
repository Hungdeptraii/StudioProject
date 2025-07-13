import 'package:cmc_food/features/authentication/screens/login/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../common/widgets/success_screen/success_screen.dart';
import '../../../../utils/constants/image_string.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_strings.dart';
import '../../../../utils/helpers/helper_functions.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed:() => Get.offAll(() => const LoginScreen()), icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body:  SingleChildScrollView(
        //Padding
        child: Padding(
          padding: const EdgeInsets.all(CSizes.defaultSpace),
          child: Column(
          children: [
              ///image
              Image(image: AssetImage(CImages.deliveredEmailIllustration), width: CHelperFunctions.screenWidth() * 0.6,),
              const SizedBox(height: CSizes.spaceBtwSections),

            ///Title & SubTitle
            Text(CTexts.confirmEmail, style: Theme.of(context).textTheme.headlineMedium, textAlign: TextAlign.center),
            const SizedBox(height: CSizes.spaceBtwItems),
            Text('hotro@cmcstore.com', style: Theme.of(context).textTheme.labelLarge, textAlign: TextAlign.center),
            const SizedBox(height: CSizes.spaceBtwItems),
            Text(CTexts.confirmEmailSubTitle, style: Theme.of(context).textTheme.labelMedium, textAlign: TextAlign.center),
            const SizedBox(height: CSizes.spaceBtwItems),
            
            ///Buttons
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () => Get.to(() => SuccessScreen(
                      image: CImages.staticSuccessIllustration,
                      title: CTexts.yourAccountCreatedTitle,
                      subTitle: CTexts.yourAccountCreatedSubTitle,
                      onPressed: () => Get.to(() => const LoginScreen()),
                    ),),
                    child: const Text(CTexts.cContinue)),
            ),
            const SizedBox(height: CSizes.spaceBtwItems),
            SizedBox(width: double.infinity, child: TextButton(onPressed: (){}, child: const Text(CTexts.resendEmail))),
          ],
        ),
      ),
    ),
  );
  }
}