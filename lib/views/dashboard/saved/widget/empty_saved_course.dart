import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:produtech/helpers/asset_pallet.dart';
import 'package:produtech/widget/auth_button.dart';

class EmptySavedCourse extends StatelessWidget {
  const EmptySavedCourse({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        const Icon(
          Icons.cloud_download_outlined,
          color: AssetPallet.primaryColor,
          size: 60,
        ),
        Text(
          'Access your courses everywhere',
          style: GoogleFonts.poppins(
            color: AssetPallet.darkGrayColor,
            fontSize: 20,
          ),
        ),
        AuthButton(onPressed: () {}, text: 'Find a course for you now')
      ],
    );
  }
}
