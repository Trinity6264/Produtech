import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:produtech/helpers/asset_pallet.dart';

class TimeLineWidget extends StatelessWidget {
  const TimeLineWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: size.height * .08,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      margin: const EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: AssetPallet.seaBlueColor,
      ),
      alignment: Alignment.centerLeft,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: ListTile(
              title: Text(
                'Lesson 1',
                style: GoogleFonts.poppins(
                  color: AssetPallet.primaryColor,
                  fontWeight: FontWeight.w600,
                ),
              ),
              subtitle: Text(
                'Introduction - 02:30 mins',
                style: GoogleFonts.poppins(
                  color: AssetPallet.darkGrayColor,
                ),
              ),
            ),
          ),
          const Icon(
            Icons.lock_outline,
            color: AssetPallet.primaryColor,
          ),
        ],
      ),
    );
  }
}
