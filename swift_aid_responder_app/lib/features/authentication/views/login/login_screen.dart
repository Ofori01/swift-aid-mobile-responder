import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:swift_aid_responder_app/common/styles/spacing_styles.dart';
import 'package:swift_aid_responder_app/utils/constants/images.dart';
import 'package:swift_aid_responder_app/utils/constants/sizes.dart';
import 'package:swift_aid_responder_app/utils/constants/text_strings.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: SSpacingStyles.paddingWithAppBarHeight,
          child: Column(
            children: [
              // login header
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // image
                  Image(
                    width: 160,
                    height: 160,
                    image: AssetImage(SImages.appLogo),
                  ),

                  SizedBox(height: SSizes.spaceBtwItems),

                  // text
                  Text(
                    STexts.loginWelcomeTitle,
                    style: Theme.of(context).textTheme.headlineLarge,
                  ),

                  SizedBox(height: SSizes.sm),

                  Text(
                    STexts.loginWelcomeSubtitle,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ],
              ),

              // login form
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: SSizes.defaultSpace,
                ),
                child: Form(
                  child: Column(
                    children: [
                      // badge number
                      TextFormField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Iconsax.security_safe),
                          label: Text(STexts.badgeNumber),
                        ),
                      ),

                      SizedBox(height: SSizes.spaceBtwFields),

                      TextFormField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Iconsax.password_check),
                          suffixIcon: Icon(Iconsax.eye_slash),
                          label: Text(STexts.password),
                        ),
                      ),

                      SizedBox(height: SSizes.md),
                      // remember me and forgot password
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // remember me
                          Row(
                            children: [
                              // checkbox
                              Checkbox(value: false, onChanged: (value) {}),
                              Text(STexts.rememberMe),
                            ],
                          ),
                          // forgot password
                          TextButton(
                            onPressed: () {},
                            child: Text(STexts.forgotPassword),
                          ),
                        ],
                      ),
                      SizedBox(height: SSizes.spaceBtwItems),

                      // sign in and create account
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text(STexts.login),
                        ),
                      ),

                      SizedBox(height: SSizes.md),

                      SizedBox(
                        width: double.infinity,
                        child: OutlinedButton(
                          onPressed: () {},
                          child: Text(STexts.createAccount),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              // login footer
            ],
          ),
        ),
      ),
    );
  }
}
