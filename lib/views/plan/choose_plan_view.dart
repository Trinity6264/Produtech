import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:produtech/app/locator.dart';
import 'package:produtech/app/routePath.dart';
import 'package:produtech/helpers/asset_pallet.dart';
import 'package:produtech/services/navigation.dart';
import 'package:produtech/widget/auth_button.dart';
import 'package:produtech/widget/choose_plan_container.dart';

class ChoosePlanView extends StatelessWidget {
  const ChoosePlanView({super.key});
  static final _navService = locator.get<NavigationService>();

  @override
  Widget build(BuildContext context) {
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
                  'Choose your plan',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    color: AssetPallet.deepBlueColor,
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: size.height * .1),
                Row(
                  children: const[
                    ChoosePlanContainer(
                      scale: 1,
                      text: '🏛️',
                      label: 'Institution',
                    ),
                    ChoosePlanContainer(
                      scale: 1.2,
                      text: '💻',
                      label: 'Solo Learner',
                    ),
                    ChoosePlanContainer(
                      scale: 1,
                      text: '🏦',
                      label: 'Corparate',
                    ),
                  ],
                ),
                SizedBox(height: size.height * 0.5),
                AuthButton(
                    onPressed: () {
                      _navService.pushNamed(RoutePath.pickFavoritePath);
                    },
                    text: 'Continue')
              ],
            ),
          ),
        ),
      ),
    );
  }
}
