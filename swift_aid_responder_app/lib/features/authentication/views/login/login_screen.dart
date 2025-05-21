import 'package:flutter/material.dart';
import 'package:swift_aid_responder_app/common/styles/spacing_styles.dart';
import 'package:swift_aid_responder_app/features/authentication/views/login/widgets/login_form.dart';
import 'package:swift_aid_responder_app/features/authentication/views/login/widgets/login_header.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: SSpacingStyles.paddingWithAppBarHeight,
          child: Column(
            children: [
              // login header
              LoginHeader(),

              // login form
              LoginForm(),

              // login footer
            ],
          ),
        ),
      ),
    );
  }
}
