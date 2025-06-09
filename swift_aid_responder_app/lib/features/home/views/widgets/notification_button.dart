import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:swift_aid_responder_app/common/widgets/buttons/notification_with_circle.dart';
import 'package:swift_aid_responder_app/utils/constants/sizes.dart';

class NotificationButton extends StatelessWidget {
  const NotificationButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: SSizes.defaultSpace,
      top: SSizes.appBarHeight,
      child: NotificationWithCircle(),
    );
  }
}
