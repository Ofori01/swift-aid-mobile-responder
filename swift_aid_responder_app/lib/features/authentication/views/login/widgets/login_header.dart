import 'package:flutter/material.dart';
import 'package:swift_aid_responder_app/utils/constants/images.dart';
import 'package:swift_aid_responder_app/utils/constants/sizes.dart';
import 'package:swift_aid_responder_app/utils/constants/text_strings.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
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
    );
  }
}
