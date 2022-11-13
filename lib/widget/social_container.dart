// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:produtech/helpers/asset_pallet.dart';

class SocialContainer extends StatelessWidget {
  final VoidCallback onTap;
  final String label;
  final IconData icon;
  const SocialContainer({
    Key? key,
    required this.onTap,
    required this.label,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: size.height * .06,
        margin: const EdgeInsets.only(top: 10),
        decoration: BoxDecoration(
          border: Border.all(
            color: AssetPallet.primaryColor,
          ),
          borderRadius: BorderRadius.circular(5),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          children: [
            Icon(icon, color: AssetPallet.deepBlueColor),
            SizedBox(width: size.width * .08),
            Text(
              label,
              style: GoogleFonts.poppins(
                color: AssetPallet.darkColor,
                fontWeight: FontWeight.w600,
                fontSize: 18.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
