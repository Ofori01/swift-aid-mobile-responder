import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:swift_aid_responder_app/features/onboarding/controllers/onboarding_page_controller.dart';
import 'package:swift_aid_responder_app/utils/constants/sizes.dart';
import 'package:swift_aid_responder_app/utils/helpers/helper_functions.dart';

class OnboardingNextButton extends StatelessWidget {
  const OnboardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: SSizes.defaultSpace,
      bottom: SHelperFunctions.getBottomNavigationHeight(),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(shape: CircleBorder()),
        onPressed: OnboardingPageController.instance.nextPage,
        child: Icon(Iconsax.arrow_right_3),
      ),
    );
  }
}
