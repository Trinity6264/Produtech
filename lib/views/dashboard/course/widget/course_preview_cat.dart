// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:produtech/helpers/asset_pallet.dart';

class CoursePreviewCat extends StatelessWidget {
  final IconData iconData;
  final String title;
  final String subTitle;
  const CoursePreviewCat({
    Key? key,
    required this.iconData,
    required this.title,
    required this.subTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: size.width * 0.2,
          height: size.height * 0.09,
          alignment: Alignment.center,
          decoration: const BoxDecoration(
            color: AssetPallet.grayColor,
            shape: BoxShape.circle,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(iconData, color: AssetPallet.primaryColor),
              Text(
                title,
                style: GoogleFonts.poppins(
                  color: AssetPallet.darkGrayColor,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 10),
        Text(
          subTitle,
          style: GoogleFonts.poppins(
            color: AssetPallet.darkColor,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
