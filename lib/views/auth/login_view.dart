

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:produtech/app/locator.dart';
import 'package:produtech/app/routePath.dart';
import 'package:produtech/controllers/auth/login_controller.dart';
import 'package:produtech/helpers/asset_pallet.dart';
import 'package:produtech/services/navigation.dart';
import 'package:produtech/widget/auth_button.dart';
import 'package:produtech/widget/auth_textfield.dart';
import 'package:produtech/widget/social_container.dart';
import 'package:provider/provider.dart';

class LoginView extends HookWidget {
  const LoginView({super.key});
  static final _navService = locator.get<NavigationService>();

  @override
  Widget build(BuildContext context) {
    final loginController = context.read<LoginViewController>();
    final emailTextController = useTextEditingController();
    final passwordTextController = useTextEditingController();
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: AssetPallet.whiteColor,
      appBar: AppBar(
        backgroundColor: AssetPallet.whiteColor,
        elevation: 0,
        iconTheme: const IconThemeData(
          color: AssetPallet.deepBlueColor,
          size: 30.0,
        ),
      ),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Log In',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    color: AssetPallet.deepBlueColor,
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: size.height * .05),
                AuthTextField(
                  controller: emailTextController,
                  icon: Icons.energy_savings_leaf_rounded,
                  hintText: 'Email or phone number',
                ),
                SizedBox(height: size.height * .02),
                Consumer<LoginViewController>(
                  builder: (context, value, child) {
                    return AuthTextField(
                      controller: passwordTextController,
                      isHavingIcon: true,
                      isSeen: value.isSeen,
                      onTap: loginController.setPassword,
                      icon: Icons.remove_red_eye_outlined,
                      hintText: 'Password',
                    );
                  },
                ),
                Container(
                  width: double.infinity,
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {
                      _navService.pushNamed(RoutePath.forgotPasswordPath);
                    },
                    child: Text(
                      'Forgot password',
                      style: GoogleFonts.poppins(
                        color: AssetPallet.primaryColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: size.height * .02),
                AuthButton(
                  onPressed: () {
                    _navService.pushNamed(RoutePath.choosePlanPath);
                  },
                  text: 'Log In',
                ),
                SizedBox(height: size.height * .02),
                Text(
                  'or',
                  style: GoogleFonts.poppins(
                    color: AssetPallet.darkColor,
                  ),
                ),
                SizedBox(height: size.height * .02),
                SocialContainer(
                  onTap: () {},
                  label: 'Continue with Google',
                  icon: Icons.ac_unit,
                ),
                SocialContainer(
                  onTap: () {},
                  label: 'Continue with Facebook',
                  icon: Icons.facebook,
                ),
                SocialContainer(
                  onTap: () {},
                  label: 'Continue with LinkedIn',
                  icon: Icons.dataset_linked,
                ),
                SizedBox(height: size.height * .03),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Don\'t have an account? ',
                        style: GoogleFonts.poppins(
                          color: AssetPallet.darkGrayColor,
                        ),
                      ),
                      TextSpan(
                          text: 'Register',
                          style: GoogleFonts.poppins(
                            color: AssetPallet.primaryColor,
                            fontWeight: FontWeight.w600,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              _navService.pushNamed(RoutePath.signUpPath);
                            }),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
