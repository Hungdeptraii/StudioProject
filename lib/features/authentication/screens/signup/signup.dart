import 'package:cmc_store/common/widgets/login_signup/form_divider.dart';
import 'package:cmc_store/common/widgets/login_signup/social_buttons.dart';
import 'package:cmc_store/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_strings.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Ẩn bàn phím khi chạm ra ngoài
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          elevation: 0,
          iconTheme: IconThemeData(color: Theme.of(context).iconTheme.color),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(CSizes.defaultSpace),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /// Title
                Text(CTexts.signupTitle, style: Theme.of(context).textTheme.headlineMedium,
                ),
                const SizedBox(height: CSizes.spaceBtwSections),

                /// Form
                CSignupForm(),
                const SizedBox(height: CSizes.spaceBtwSections),
                ///Divider
                CFormDivider(dividerText: CTexts.orSignUpWith.capitalize!),
                const SizedBox(height: CSizes.spaceBtwSections),

                ///Social Buttons
                const CSocialButtons(),

              ],
            ),
          ),
        ),
      ),
    );
  }
}


