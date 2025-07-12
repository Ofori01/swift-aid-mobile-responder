import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:swift_aid_responder_app/utils/constants/sizes.dart';

class HomeMenu extends StatelessWidget {
  const HomeMenu({super.key, required this.onTap});
  
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: SSizes.defaultSpace,
      top: SSizes.appBarHeight,

      child: IconButton(
        iconSize: SSizes.iconSize,
        onPressed: onTap,
        icon: Icon(CupertinoIcons.bars),
      ),
    );
  }
}
