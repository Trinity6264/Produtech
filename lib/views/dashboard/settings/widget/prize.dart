import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:produtech/helpers/asset_pallet.dart';

class PrizeWidget extends StatelessWidget {
  const PrizeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: double.infinity,
          alignment: Alignment.centerLeft,
          child: Text(
            'Your Prizes',
            style: GoogleFonts.poppins(
              color: AssetPallet.darkGrayColor,
              fontWeight: FontWeight.w600,
              fontSize: 18.0,
            ),
          ),
        ),
      ],
    );
  }
}
