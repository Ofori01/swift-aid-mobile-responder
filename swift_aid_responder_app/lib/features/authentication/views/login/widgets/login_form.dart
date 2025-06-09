import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:swift_aid_responder_app/features/home/views/home_screen.dart';
import 'package:swift_aid_responder_app/utils/constants/sizes.dart';
import 'package:swift_aid_responder_app/utils/constants/text_strings.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
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
                onPressed: ()=> Get.offAll(()=> const HomeScreen()),
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
    );
  }
}
