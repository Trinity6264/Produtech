import 'dart:developer';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:produtech/app/locator.dart';
import 'package:produtech/app/routePath.dart';
import 'package:produtech/controllers/auth/register_controller.dart';
import 'package:produtech/helpers/asset_pallet.dart';
import 'package:produtech/services/navigation.dart';
import 'package:produtech/widget/auth_button.dart';
import 'package:produtech/widget/auth_textfield.dart';
import 'package:provider/provider.dart';

class RegisterView extends HookWidget {
  const RegisterView({super.key});

  static final _navService = locator.get<NavigationService>();

  @override
  Widget build(BuildContext context) {
    final fullNameTextController = useTextEditingController();
    final emailTextController = useTextEditingController();
    final numberTextController = useTextEditingController();
    final passwordTextController = useTextEditingController();
    final confirmPasswordTextController = useTextEditingController();

    Size size = MediaQuery.of(context).size;
    final loginController = context.read<RegisterViewController>();
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
                  'Register',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    color: AssetPallet.deepBlueColor,
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: size.height * .05),
                AuthTextField(
                  controller: fullNameTextController,
                  hintText: 'Full Name',
                ),
                SizedBox(height: size.height * .02),
                AuthTextField(
                  controller: emailTextController,
                  hintText: 'Email',
                ),
                SizedBox(height: size.height * .02),
                IntlPhoneField(
                  controller: numberTextController,
                  dropdownIconPosition: IconPosition.trailing,
                  initialCountryCode: '+233',
                  decoration: const InputDecoration(
                    labelText: 'Phone Number',
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: AssetPallet.primaryColor,
                      ),
                    ),
                  ),
                  onChanged: (phone) {
                    log(phone.completeNumber);
                  },
                  onCountryChanged: (country) {
                    log('Country changed to: ' + country.name);
                  },
                ),
                SizedBox(height: size.height * .02),
                AuthTextField(
                  controller: passwordTextController,
                  hintText: 'Password',
                  isHavingIcon: true,
                  icon: Icons.remove_red_eye_outlined,
                ),
                SizedBox(height: size.height * .02),
                AuthTextField(
                  controller: confirmPasswordTextController,
                  hintText: 'Confirm Password',
                  icon: Icons.remove_red_eye_outlined,
                  isHavingIcon: true,
                ),
                SizedBox(height: size.height * .03),
                AuthButton(
                    onPressed: () {
                      _navService.pushNamed(RoutePath.otpPath);
                    },
                    text: 'Next'),
                SizedBox(height: size.height * .02),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Already have an account? ',
                        style: GoogleFonts.poppins(
                          color: AssetPallet.darkGrayColor,
                        ),
                      ),
                      TextSpan(
                          text: 'Log In',
                          style: GoogleFonts.poppins(
                            color: AssetPallet.primaryColor,
                            fontWeight: FontWeight.w600,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              _navService.pushNamed(RoutePath.loginPath);
                            }),
                    ],
                  ),
                ),
                SizedBox(height: size.height * .04),
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'By continuing you agree to Our ',
                        style: GoogleFonts.poppins(
                          color: AssetPallet.darkGrayColor,
                        ),
                      ),
                      TextSpan(
                          text: 'Terms & Conditions ',
                          style: GoogleFonts.poppins(
                            color: AssetPallet.primaryColor,
                            fontWeight: FontWeight.w600,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              log('login');
                            }),
                      TextSpan(
                        text: ' and ',
                        style: GoogleFonts.poppins(
                          color: AssetPallet.darkGrayColor,
                        ),
                      ),
                      TextSpan(
                          text: 'Privacy policy ',
                          style: GoogleFonts.poppins(
                            color: AssetPallet.primaryColor,
                            fontWeight: FontWeight.w600,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              log('login');
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
