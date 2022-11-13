import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:produtech/helpers/asset_pallet.dart';
import 'package:produtech/widget/auth_button.dart';
import 'package:produtech/widget/auth_textfield.dart';

class ResetPasswordView extends HookWidget {
  const ResetPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    final emailTextController = useTextEditingController();
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
                    'Reset Password',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      color: AssetPallet.deepBlueColor,
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: size.height * .05),
                  Text(
                    'Enter your email and a verification code to reset the password will be sent to your email',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      color: AssetPallet.darkColor,
                      fontSize: 16.0,
                    ),
                  ),
                  SizedBox(height: size.height * .1),
                  AuthTextField(
                    controller: emailTextController,
                    hintText: 'Enter your email address',
                  ),
                  SizedBox(height: size.height * .05),
                  AuthButton(onPressed: () {}, text: 'Send verification code'),
                ],
              ),
            ),
          ),
        ));
  }
}
