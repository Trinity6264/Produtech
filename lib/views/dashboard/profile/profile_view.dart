import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:produtech/app/app.gr.dart';
import 'package:produtech/app/locator.dart';
import 'package:produtech/app/routePath.dart';
import 'package:produtech/helpers/asset_pallet.dart';
import 'package:produtech/services/navigation.dart';
import 'package:produtech/views/dashboard/profile/widget/achievement_card.dart';
import 'package:produtech/widget/auth_button.dart';
import 'package:produtech/widget/custom_appbar.dart';

// enum for diff type of widget

enum PageWidgetType { account, certificate, prize }

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});
  static final _navService = locator.get<NavigationService>();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AssetPallet.whiteColor,
      appBar: customAppbar(
        context,
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          width: double.infinity,
          height: double.infinity,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          'USERNAME',
                          style: GoogleFonts.poppins(
                            fontSize: 20.0,
                            letterSpacing: 1.2,
                            fontWeight: FontWeight.w600,
                            color: AssetPallet.whiteColor,
                          ),
                        ),
                        const SizedBox(width: 10),
                        IconButton(
                          onPressed: () => _navService.navigateTo(
                            SettingViewsRoute(pageType: PageWidgetType.account),
                          ),
                          icon: const Icon(
                            Icons.settings,
                            color: AssetPallet.deepBlueColor,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      'user@gmail.com',
                      style: GoogleFonts.poppins(
                        letterSpacing: 1.2,
                        color: AssetPallet.whiteColor,
                      ),
                    ),
                    Container(
                      width: size.width * 0.4,
                      height: size.height * .05,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: AssetPallet.grayColor,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Text(
                        '1,4575 XP',
                        style: GoogleFonts.poppins(
                          letterSpacing: 1.2,
                          fontSize: 16.0,
                          fontWeight: FontWeight.w600,
                          color: AssetPallet.primaryColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const CircleAvatar(
                maxRadius: 40,
                backgroundColor: AssetPallet.deepBlueColor,
                child: CircleAvatar(
                  backgroundImage: AssetImage(AssetPallet.coverPic),
                  maxRadius: 38,
                ),
              )
            ],
          ),
        ),
      ),
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: size.height * .02),
              titleText('COURSES'),
              SizedBox(height: size.height * .02),
              SizedBox(
                width: double.infinity,
                height: size.height * 0.1,
                child: ListView.builder(
                  itemCount: 10,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      width: size.width * 0.2,
                      height: double.infinity,
                      alignment: Alignment.center,
                      margin: const EdgeInsets.symmetric(horizontal: 5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: AssetPallet.grayColor),
                      ),
                      child: index == 0
                          ? const Icon(
                              Icons.add,
                              color: AssetPallet.primaryColor,
                              size: 28.0,
                            )
                          : const SizedBox.shrink(),
                    );
                  },
                ),
              ),
              SizedBox(height: size.height * .02),
              titleText('ACHIEVEMENTS'),
              SizedBox(height: size.height * .02),
              SizedBox(
                width: double.infinity,
                height: size.height * 0.1,
                child: Row(
                  children: [
                    AchievementCard(
                      value: '0',
                      title: 'Certificate',
                      onTap: () => _navService.navigateTo(
                        SettingViewsRoute(pageType: PageWidgetType.certificate),
                      ),
                    ),
                    const SizedBox(width: 10),
                    AchievementCard(
                        value: '0',
                        title: 'Prize',
                        onTap: () {
                          _navService.navigateTo(
                            SettingViewsRoute(pageType: PageWidgetType.prize),
                          );
                        }),
                  ],
                ),
              ),
              SizedBox(height: size.height * .02),
              titleText('LEADERBOARD'),
              SizedBox(height: size.height * .02),
              Container(
                width: double.infinity,
                height: size.height * 0.3,
                padding: const EdgeInsets.symmetric(horizontal: 25),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: AssetPallet.seaBlueColor.withOpacity(0.7),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Rank High & Gain Prices on the leaderboard',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                        color: AssetPallet.darkColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                        letterSpacing: 1.2,
                        wordSpacing: 1.2,
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    AuthButton(onPressed: () {}, text: 'Start learning now')
                  ],
                ),
              ),
              SizedBox(height: size.height * .02),
            ],
          ),
        ),
      ),
    );
  }

  Text titleText(String val) {
    return Text(
      val,
      style: GoogleFonts.poppins(
        color: AssetPallet.deepBlueColor,
        fontWeight: FontWeight.bold,
        fontSize: 25.0,
      ),
    );
  }
}
