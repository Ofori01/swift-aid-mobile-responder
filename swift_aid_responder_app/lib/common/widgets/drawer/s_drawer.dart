import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:iconsax/iconsax.dart';
import 'package:swift_aid_responder_app/features/home/controllers/home_controller.dart';
import 'package:swift_aid_responder_app/utils/constants/colors.dart';
import 'package:swift_aid_responder_app/utils/constants/sizes.dart';
import 'package:swift_aid_responder_app/utils/helpers/helper_functions.dart';

class SDrawer extends StatelessWidget {
  const SDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);
    final homeController = HomeController().instance;

    return Obx(
      () => Drawer(
        child: Container(
          padding: EdgeInsets.only(top: SSizes.defaultSpace, left: SSizes.sm),
          color: dark ? SAppColors.darkGrey : SAppColors.lightGrey,

          child: Material(
            child: ListView(
              children: [
                //header with icon name and agency. Can be clicked to view profile. No padding
                InkWell(
                  onTap: () {},
                  //profile image
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: SSizes.sm),
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 30,
                          child: Icon(Iconsax.profile_2user),
                        ),

                        //name and agency
                        SizedBox(width: SSizes.spaceBtwItems),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              homeController.user.value?.name ??
                                  'Responder Name',
                              style: Theme.of(context).textTheme.labelLarge,
                            ),
                            SizedBox(height: SSizes.sm),

                            //icon and agency
                            Text(
                              homeController.user.value?.agency ?? "Agency",
                              style: Theme.of(context).textTheme.labelMedium,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),

                SizedBox(height: SSizes.spaceBtwFields),

                Divider(thickness: 2),
                //Menu items
                ListTile(
                  title: Text(
                    "History",
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                  leading: Icon(Iconsax.clock),
                ),

                // divider

                // logout
              ],
            ),
          ),
        ),
      ),
    );
  }
}
