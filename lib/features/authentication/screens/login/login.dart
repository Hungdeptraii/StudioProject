import 'package:cmc_store/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:cmc_store/common/styles/spacing_styles.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/image_string.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_strings.dart';

class LoginScreen extends StatelessWidget {
  const  LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = CHelperFunctions.isDarkMode(context);

   return  Scaffold(
     body: SingleChildScrollView(
       child: Padding(
         padding: CSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              //logo
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image(
                    height: 150,
                    image: AssetImage(dark ? CImages.lightAppLogo : CImages.darkAppLogo),
                  ),
                  Text(CTexts.loginTitle, style: Theme.of(context).textTheme.headlineMedium),
                  const SizedBox(height: CSizes.sm),
                  Text(CTexts.loginSubTitle, style: Theme.of(context).textTheme.headlineMedium),
                ],
              ),

              ///Form
              Form(
                child: Column(
                children: [
                  //Email
                  TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Iconsax.direct_right),
                      labelText: CTexts.email,
                    ),
                  ),
                  const SizedBox(height: CSizes.spaceBtwInputFields),

                  TextFormField(
                    decoration: const InputDecoration(
                        prefixIcon: Icon(Iconsax.password_check),
                        labelText: CTexts.password,
                        suffixIcon: Icon(Iconsax.eye_slash),
                  ),
                  ),
                  const SizedBox(height: CSizes.spaceBtwInputFields / 2,),


                  ///Remember me  & Forgot Password
                  Row(
                    children: [
                      ///Remember me
                      Row(
                        children: [
                          Checkbox(value: true, onChanged: (value){}),
                          const Text(CTexts.rememberMe),
                        ],
                      ),
                      
                      ///Forgot Password
                      TextButton(onPressed: (){}, child: const Text(CTexts.forgetPassword)),
                    ],
                  ),
                  const SizedBox(height: CSizes.spaceBtwSections),
                ],
                ),
              ),
            ],
          ),
         ),
       ),
   );


  }
}