import 'package:cmc_food/features/authentication/screens/signup/verify_email.dart';
import 'package:cmc_food/features/authentication/screens/signup/widgets/terms_condition_checkbox.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';



class CSignupForm extends StatefulWidget {
  const CSignupForm({super.key});

  @override
  State<CSignupForm> createState() => _CSignupFormState();
}

class _CSignupFormState extends State<CSignupForm> {
  bool _obscureText = true;


  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          /// First & Last Name
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  decoration: const InputDecoration(
                    labelText: CTexts.firstName,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
              const SizedBox(width: CSizes.spaceBtwInputFields),
              Expanded(
                child: TextFormField(
                  decoration: const InputDecoration(
                    labelText: CTexts.lastName,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: CSizes.spaceBtwInputFields),
          ///Username

          TextFormField(
            expands: false,
            decoration: const InputDecoration(labelText: CTexts.username, prefixIcon: Icon(Iconsax.user_edit)),
          ),
          const SizedBox(height: CSizes.spaceBtwInputFields),

          ///Email
          TextFormField(
            expands: false,
            decoration: const InputDecoration(labelText: CTexts.email, prefixIcon: Icon(Iconsax.direct)),
          ),
          const SizedBox(height: CSizes.spaceBtwInputFields),

          ///Phone number
          TextFormField(
            expands: false,
            decoration: const InputDecoration(labelText: CTexts.phoneNo, prefixIcon: Icon(Iconsax.call)),
          ),
          const SizedBox(height: CSizes.spaceBtwInputFields),

          ///Password
          TextFormField(
            obscureText: _obscureText,
            decoration: InputDecoration(
              prefixIcon: const Icon(Iconsax.password_check),
              labelText: CTexts.password,
              suffixIcon: IconButton(
                icon: Icon(
                  _obscureText ? Iconsax.eye_slash : Iconsax.eye,
                ),
                onPressed: () {
                  setState(() {
                    _obscureText = !_obscureText;
                  });
                },
              ),
            ),
          ),
          const SizedBox(height: CSizes.spaceBtwInputFields),

          ///Điều khoản và dịch vụ
          const CTermsAndConditionCheckbox(),
          const SizedBox(height: CSizes.spaceBtwSections),
          ///Sign Up Button
          SizedBox(
              width: double.infinity,
              child: ElevatedButton(onPressed: () => Get.to(() => const VerifyEmailScreen()), child: const Text(CTexts.createAccount))
          ),

        ],
      ),
    );
  }
}