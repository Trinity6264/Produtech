import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:produtech/helpers/asset_pallet.dart';
import 'package:produtech/widget/auth_button.dart';
import 'package:produtech/widget/auth_textfield.dart';

class OtpView extends HookWidget {
  const OtpView({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    final otpTextController = useTextEditingController();
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
                    'Enter OTP',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      color: AssetPallet.deepBlueColor,
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: size.height * .05),
                  Text(
                    'Enter One Time Password that will be sent to your number',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      color: AssetPallet.darkColor,
                      fontSize: 16.0,
                    ),
                  ),
                  SizedBox(height: size.height * .1),
                  AuthTextField(
                    controller: otpTextController,
                    hintText: 'Enter the code here',
                  ),
                  SizedBox(height: size.height * .05),
                  AuthButton(onPressed: () {}, text: 'Authentication login'),
                  SizedBox(height: size.height * .05),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Resend OTP code',
                      style: GoogleFonts.poppins(
                        color: AssetPallet.darkColor,
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
