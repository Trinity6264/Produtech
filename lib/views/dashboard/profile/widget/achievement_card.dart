// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:produtech/helpers/asset_pallet.dart';

class AchievementCard extends StatelessWidget {
  final String value;
  final String title;
  const AchievementCard({
    Key? key,
    required this.value,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: AssetPallet.seaBlueColor.withOpacity(0.7),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            Expanded(
              child: ListTile(
                title: Text(
                  title,
                  style: GoogleFonts.poppins(
                    color: AssetPallet.primaryColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                subtitle: Text(
                  value,
                  style: GoogleFonts.poppins(
                    color: AssetPallet.deepBlueColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 30.0,
                  ),
                ),
              ),
            ),
            Transform.rotate(
              angle: 90.0,
              child: Image.asset(
                AssetPallet.coverPic,
                width: size.width * .13,
                height: double.infinity,
                filterQuality: FilterQuality.high,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
