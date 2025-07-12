import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:iconsax/iconsax.dart';
import 'package:swift_aid_responder_app/common/widgets/custom_shapes/curved_edges/s_primary_footer.dart';
import 'package:swift_aid_responder_app/features/home/controllers/home_controller.dart';
import 'package:swift_aid_responder_app/utils/constants/colors.dart';
import 'package:swift_aid_responder_app/utils/constants/sizes.dart';
import 'package:swift_aid_responder_app/utils/constants/text_strings.dart';

class HomeFooter extends StatelessWidget {
  const HomeFooter({super.key});

  @override
  Widget build(BuildContext context) {
    final homeController = HomeController().instance;
    return Obx(
      ()=> Positioned(
        left: 0,
        right: 0,
        bottom: 0,
        child: SPrimaryFooter(
          backgroundColor: SAppColors.light,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(width: SSizes.defaultSpace),
              //first button
              Flexible(
                child: IconButton(
                  iconSize: SSizes.iconSize,
                  onPressed: () {},
                  icon: Icon(Iconsax.calendar),
                ),
              ),
      
              SizedBox(width: SSizes.spaceBtwItems),
      
              //second large button
              Expanded(
                flex: 4,
                child: ElevatedButton(
                  onPressed: ()=>{
                     homeController.updateResponderStatus(
                    homeController.user.value?.status == STexts.available ? STexts.unavailable: STexts.available
                  ) 
                  },
                  child:
                      homeController.statusLoading.value
                          ? SizedBox(
                            height: 24,
                            child: CircularProgressIndicator(),
                          )
                          : (homeController.user.value?.status == STexts.available
                              ? Text(STexts.goOffline)
                              : Text(STexts.goOnline)),
                ),
              ),
              SizedBox(width: SSizes.spaceBtwItems),
      
              //last button
              Flexible(
                child: IconButton(
                  iconSize: SSizes.iconSize,
                  onPressed: () {},
                  icon: Icon(Iconsax.menu),
                ),
              ),
              SizedBox(width: SSizes.defaultSpace),
            ],
          ),
        ),
      ),
    );
  }
}
