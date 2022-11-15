// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:produtech/helpers/asset_pallet.dart';
import 'package:produtech/views/dashboard/profile/profile_view.dart';
import 'package:produtech/views/dashboard/settings/widget/account.dart';
import 'package:produtech/views/dashboard/settings/widget/certificate.dart';
import 'package:produtech/views/dashboard/settings/widget/prize.dart';
import 'package:produtech/widget/custom_appbar.dart';

class SettingViews extends StatelessWidget {
  final PageWidgetType pageType;
  const SettingViews({
    Key? key,
    required this.pageType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
      backgroundColor: AssetPallet.whiteColor,
      appBar: customAppbar(
        context,
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const BackButton(color: AssetPallet.whiteColor),
            const SizedBox(width: 10),
            Text(
              pageType == PageWidgetType.account
                  ? 'Settings'
                  : pageType == PageWidgetType.certificate
                      ? 'Certificates'
                      : 'Prizes',
              style: GoogleFonts.poppins(
                color: AssetPallet.whiteColor,
                letterSpacing: 1.2,
                fontSize: 20.0,
              ),
            ),
          ],
        ),
      ),
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                height: size.height * 0.11,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const CircleAvatar(
                      backgroundImage: AssetImage(AssetPallet.coverPic),
                      maxRadius: 30,
                    ),
                    Expanded(
                      child: ListTile(
                        title: Text(
                          'USERNAME',
                          style: GoogleFonts.poppins(
                            color: AssetPallet.primaryColor,
                            fontSize: 20.0,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 1.2,
                          ),
                        ),
                        subtitle: Text(
                          'username@gamil.com',
                          style: GoogleFonts.poppins(
                            color: AssetPallet.darkGrayColor,
                            letterSpacing: 1.2,
                          ),
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.edit_calendar_outlined,
                        color: AssetPallet.primaryColor,
                      ),
                    ),
                  ],
                ),
              ),
              // SizedBox(height: size.height * .02),
              pageType == PageWidgetType.account
                  ? const AccountWidget()
                  : pageType == PageWidgetType.certificate
                      ? const CertificateWidget()
                      : const PrizeWidget(),
            ],
          ),
        ),
      ),
    ));
  }
}
