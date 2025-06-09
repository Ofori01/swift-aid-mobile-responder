import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:swift_aid_responder_app/utils/constants/sizes.dart';

class HomeMenu extends StatelessWidget {
  const HomeMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: SSizes.defaultSpace,
      top: SSizes.appBarHeight,

      child: IconButton(
        iconSize: SSizes.iconSize,
        onPressed: () {},
        icon: Icon(CupertinoIcons.bars),
      ),
    );
  }
}
