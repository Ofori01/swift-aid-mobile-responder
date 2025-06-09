import 'package:flutter/material.dart';
import 'package:swift_aid_responder_app/features/home/views/widgets/home_footer.dart';
import 'package:swift_aid_responder_app/features/home/views/widgets/home_menu.dart';
import 'package:swift_aid_responder_app/features/home/views/widgets/notification_button.dart';
// ignore: unused_import
import 'package:swift_aid_responder_app/utils/constants/sizes.dart';
import 'package:swift_aid_responder_app/utils/helpers/helper_functions.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          //main screen with map

          //map center
          Positioned(
            top: 0,
            bottom: SHelperFunctions.getScreenHeight() * 0.1,
            left: 0,
            right: 0,
            child: Container(color: Colors.lightBlue),
          ),
          //menu button left
          HomeMenu(),
          //bottom
          HomeFooter(),
          //notification button right
          NotificationButton(),
        ],
      ),
    );
  }
}
