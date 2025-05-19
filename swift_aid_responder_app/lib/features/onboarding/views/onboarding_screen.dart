import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:get/utils.dart';
import 'package:swift_aid_responder_app/features/onboarding/controllers/onboarding_page_controller.dart';
import 'package:swift_aid_responder_app/features/onboarding/views/widgets/onboarding_next_button.dart';
import 'package:swift_aid_responder_app/features/onboarding/views/widgets/onboarding_page.dart';
import 'package:swift_aid_responder_app/features/onboarding/views/widgets/onboarding_page_indicator.dart';
import 'package:swift_aid_responder_app/features/onboarding/views/widgets/onboarding_skip.dart';
import 'package:swift_aid_responder_app/utils/constants/images.dart';
import 'package:swift_aid_responder_app/utils/constants/sizes.dart';
import 'package:swift_aid_responder_app/utils/constants/text_strings.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnboardingPageController());
    return Scaffold(
      body: Stack(
        children: [
          // scrollable page
          Padding(
            padding: const EdgeInsets.all(SSizes.defaultSpace),
            child: PageView(
              controller: controller.pageController,
              onPageChanged: controller.updateCurrentPage,
              children: [
                //
                OnboardingPage(
                  image: SImages.onboardingPolice,
                  title: STexts.onboardingPoliceTitle,
                  subtitle: STexts.onboardingPoliceSubtitle,
                ),
                OnboardingPage(
                  image: SImages.onboardingAmbulance,
                  title: STexts.onboardingAmbulanceTitle,
                  subtitle: STexts.onboardingAmbulanceSubtitle,
                ),
                OnboardingPage(
                  image: SImages.onboardingNavigation,
                  title: STexts.onboardingNavigationTitle,
                  subtitle: STexts.onboardingNavigationSubtitle,
                ),
              ],
            ),
          ),

          // skip button
          OnboardingSkip(),

          // smooth page indicator
          OnboardingPageIndicator(),

          // next button
          OnboardingNextButton(),
        ],
      ),
    );
  }
}
