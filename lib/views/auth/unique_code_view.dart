import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:produtech/helpers/asset_pallet.dart';
import 'package:produtech/widget/auth_button.dart';
import 'package:produtech/widget/auth_textfield.dart';

class UniqueCodeView extends HookWidget {
  const UniqueCodeView({super.key});

  @override
  Widget build(BuildContext context) {
    final codeTextController = useTextEditingController();
    final institutionTextController = useTextEditingController();
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
                  'Enter your unique code',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    color: AssetPallet.deepBlueColor,
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                // SizedBox(height: size.height * .05),
                SizedBox(height: size.height * .3),
                AuthTextField(
                  controller: codeTextController,
                  hintText: 'Enter your code here',
                ),
                SizedBox(height: size.height * .05),
                AuthTextField(
                  controller: institutionTextController,
                  hintText: 'Name of Institution',
                ),
                SizedBox(height: size.height * .26),
                AuthButton(
                  onPressed: () {
                    // _navService.pushNamed(RoutePath.uniqueCodePath);
                  },
                  text: 'Verify',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
