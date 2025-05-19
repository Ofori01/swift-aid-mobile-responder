import 'package:flutter/material.dart';
import 'package:swift_aid_responder_app/features/onboarding/controllers/onboarding_page_controller.dart';
import 'package:swift_aid_responder_app/utils/constants/sizes.dart';
import 'package:swift_aid_responder_app/utils/helpers/helper_functions.dart';

class OnboardingSkip extends StatelessWidget {
  const OnboardingSkip({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: SHelperFunctions.getAppBarHeight(),
      right: SSizes.defaultSpace,
      child: TextButton(
        onPressed: OnboardingPageController.instance.skip,
        child: Text("Skip"),
      ),
    );
  }
}
