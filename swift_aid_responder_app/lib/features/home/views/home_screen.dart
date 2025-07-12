import 'package:flutter/material.dart';
import 'package:swift_aid_responder_app/common/widgets/drawer/s_drawer.dart';
import 'package:swift_aid_responder_app/common/widgets/snackbar/s_snackbar.dart';
import 'package:swift_aid_responder_app/features/home/controllers/home_controller.dart';
import 'package:swift_aid_responder_app/features/home/views/widgets/home_footer.dart';
import 'package:swift_aid_responder_app/features/home/views/widgets/home_menu.dart';
import 'package:swift_aid_responder_app/features/home/views/widgets/notification_button.dart';
import 'package:swift_aid_responder_app/utils/helpers/helper_functions.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final homeController = HomeController().instance;

  @override
  void initState()  {
    super.initState();
    homeController.loadUserData();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      SSnackbar.messageSnackbar(
        "Hi, ${homeController.user.value?.name ?? "Responder"} ",
        "Let's get ready to save some lives",
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SDrawer(),
      body: Builder(
        builder: (context) {
          return Stack(
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

              //bottom
              HomeFooter(),

              //menu button left
              HomeMenu(onTap: () => Scaffold.of(context).openDrawer()),

              //notification button right
              NotificationButton(),
            ],
          );
        },
      ),
    );
  }
}
