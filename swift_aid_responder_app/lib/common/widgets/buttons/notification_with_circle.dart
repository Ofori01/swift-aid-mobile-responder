import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:swift_aid_responder_app/utils/constants/colors.dart';
import 'package:swift_aid_responder_app/utils/constants/sizes.dart';

class NotificationWithCircle extends StatelessWidget {
  const NotificationWithCircle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        //button
        IconButton(
          iconSize: SSizes.iconSize,
          onPressed: () {},
          icon: Icon(Iconsax.notification),
        ),
        //circle
        Positioned(
          right: 8,
          top: 2,
          child: Container(
            height: 20,
            width: 20,
            decoration: BoxDecoration(
              color: SAppColors.primaryAccent,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Text('1', textAlign: TextAlign.center),
          ),
        ),
      ],
    );
  }
}
