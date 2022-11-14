// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:produtech/helpers/asset_pallet.dart';

class RankingCircle extends StatelessWidget {
  final bool isFirst;
  final String points;
  final String rank;
  const RankingCircle({
    Key? key,
    this.isFirst = false,
    required this.points,
    required this.rank,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        !isFirst
            ? SizedBox(
                height: size.height * 0.03,
              )
            : const SizedBox.shrink(),
        Stack(
          children: [
            CircleAvatar(
              backgroundImage: const AssetImage(AssetPallet.coverPic),
              maxRadius: isFirst ? 40 : 30,
            ),
            Positioned(
              top: -10,
              child: Container(
                alignment: Alignment.center,
                width: size.width * 0.06,
                height: size.height * 0.06,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: AssetPallet.goldColor,
                ),
                child: Text(
                  rank,
                  style: GoogleFonts.poppins(
                    color: AssetPallet.darkColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: size.height * 0.02),
        Text(
          'USER X${rank} Name',
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(height: size.height * 0.02),
        Container(
          width: size.width * 0.25,
          height: size.height * 0.03,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: AssetPallet.primaryColor,
          ),
          child: Text(
            points,
            style: GoogleFonts.poppins(
              color: AssetPallet.darkColor,
            ),
          ),
        ),
      ],
    );
  }
}
