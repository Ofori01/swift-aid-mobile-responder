import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:swift_aid_responder_app/common/widgets/custom_shapes/curved_edges/s_primary_footer.dart';
import 'package:swift_aid_responder_app/utils/constants/colors.dart';
import 'package:swift_aid_responder_app/utils/constants/sizes.dart';
import 'package:swift_aid_responder_app/utils/constants/text_strings.dart';
import 'package:swift_aid_responder_app/utils/helpers/helper_functions.dart';

class HomeFooter extends StatelessWidget {
  const HomeFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 0,
      right: 0,
      bottom: 0,
      child: SPrimaryFooter(
        height: SHelperFunctions.getScreenHeight() * 0.2,
        // ignore: deprecated_member_use
        backgroundColor: SAppColors.grey,
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
                onPressed: () {},
                child: Text(STexts.goOnline),
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
    );
  }
}
