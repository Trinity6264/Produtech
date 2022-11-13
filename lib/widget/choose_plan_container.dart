// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:produtech/helpers/asset_pallet.dart';

class ChoosePlanContainer extends StatelessWidget {
  final double scale;
  final String text;
  final String label;
  const ChoosePlanContainer({
    Key? key,
    required this.scale,
    required this.text,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Transform.scale(
      scale: scale,
      child: SizedBox(
        width: size.width * 0.29,
        // height: size.height * .1,
        child: Column(
          children: [
            Container(
              height: size.height * .06,
              width: size.width * 0.29,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: AssetPallet.whiteColor,
                border: Border.all(
                  color: AssetPallet.primaryColor,
                ),
              ),
              child: Text(
                text,
                style: const TextStyle(
                  fontSize: 20.0,
                ),
              ),
            ),
            Text(
              label,
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                color: AssetPallet.primaryColor,
                fontSize: 16.0,
                fontWeight: FontWeight.w500,
              ),
            )
          ],
        ),
      ),
    );
  }
}
