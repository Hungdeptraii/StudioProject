import 'package:cmc_store/features/authentication/screens/login/widgets/login_form.dart';
import 'package:cmc_store/features/authentication/screens/login/widgets/login_header.dart';


import 'package:cmc_store/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:cmc_store/common/styles/spacing_styles.dart';
import 'package:get/get.dart';


import '../../../../common/widgets/login_signup/form_divider.dart';
import '../../../../common/widgets/login_signup/social_buttons.dart';

import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_strings.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      body: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () => FocusScope.of(context).unfocus(),
        child: SingleChildScrollView(
          child: Padding(
            padding: CSpacingStyle.paddingWithAppBarHeight,
            child: Column(
              children: [
                /// Logo & Title
               const CLoginHeader(),

                /// Form
                const CLoginForm(),

                /// Divider
                CFormDivider(dividerText: CTexts.orSignInWith.capitalize!),
                const SizedBox(height: CSizes.spaceBtwSections),

                /// Footer Social Icons
                const CSocialButtons(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}




