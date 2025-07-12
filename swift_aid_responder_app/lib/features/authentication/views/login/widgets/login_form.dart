import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:swift_aid_responder_app/features/authentication/controllers/login_controller.dart';
import 'package:swift_aid_responder_app/utils/constants/sizes.dart';
import 'package:swift_aid_responder_app/utils/constants/text_strings.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LoginController());
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: SSizes.defaultSpace),
      child: Form(
        child: Column(
          children: [
            // badge number
            TextFormField(
              controller: controller.badgeNumber,
              decoration: InputDecoration(
                prefixIcon: Icon(Iconsax.security_safe),
                label: Text(STexts.badgeNumber),
              ),
            ),

            SizedBox(height: SSizes.spaceBtwFields),

            TextFormField(
              controller: controller.password,
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
            Obx(
              () => SizedBox(
                width: double.infinity,
                child:
                    controller.isLoading.value
                        ? ElevatedButton(
                          onPressed: () {},
                          child: SizedBox(
                            height: 24,
                            child: CircularProgressIndicator(),
                          ),
                        )
                        : ElevatedButton(
                          onPressed: () => controller.onSignIn(),
                          child: Text(STexts.login),
                        ),
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
    );
  }
}
