import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:swift_aid_responder_app/features/onboarding/controllers/onboarding_page_controller.dart';
import 'package:swift_aid_responder_app/utils/constants/colors.dart';
import 'package:swift_aid_responder_app/utils/constants/sizes.dart';
import 'package:swift_aid_responder_app/utils/helpers/helper_functions.dart';

class OnboardingPageIndicator extends StatelessWidget {
  const OnboardingPageIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    final bool dark = SHelperFunctions.isDarkMode(context);
    // page controller
    final controller = OnboardingPageController.instance;
    return Positioned(
      bottom: SHelperFunctions.getBottomNavigationHeight() + 25,
      left: SSizes.defaultSpace,
      child: SmoothPageIndicator(
        controller: controller.pageController,
        count: 3,
        onDotClicked: controller.dotNavigation,
        effect: ExpandingDotsEffect(
          activeDotColor: dark ? SAppColors.light : SAppColors.dark,
          dotHeight: 6.5,
          dotWidth: 15,
          dotColor: dark ? SAppColors.light : SAppColors.dark,
        ),
      ),
    );
  }
}
