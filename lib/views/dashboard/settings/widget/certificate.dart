import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:produtech/helpers/asset_pallet.dart';

class CertificateWidget extends StatelessWidget {
  const CertificateWidget({super.key});

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
            'Your Certificates',
            style: GoogleFonts.poppins(
              color: AssetPallet.darkGrayColor,
              fontWeight: FontWeight.w600,
              fontSize: 18.0,
            ),
          ),
        ),
        SizedBox(height: size.height * .02),
        containerWrapper(
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              AssetPallet.coverPic,
              width: double.maxFinite,
              height: double.maxFinite,
              fit: BoxFit.cover,
            ),
          ),
          'Web Development',
          size,
        ),
        SizedBox(height: size.height * .02),
        containerWrapper(
          Container(
            width: double.maxFinite,
            height: double.maxFinite,
            decoration: BoxDecoration(
              color: AssetPallet.grayColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.add,
                  color: AssetPallet.primaryColor,
                  size: 40,
                ),
                Text(
                  'Learn more courses',
                  style: GoogleFonts.poppins(
                    color: AssetPallet.darkGrayColor,
                    fontSize: 16.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          '',
          size,
        ),
      ],
    );
  }

  Column containerWrapper(Widget child, String title, Size size) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: size.width * .5,
          padding: const EdgeInsets.all(2),
          height: size.height * 0.2,
          decoration: BoxDecoration(
            border: Border.all(
              color: AssetPallet.primaryColor,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          child: child,
        ),
        SizedBox(height: size.height * .01),
        Text(
          title,
          style: GoogleFonts.poppins(
            color: AssetPallet.primaryColor,
            fontWeight: FontWeight.w500,
            fontSize: 15.0,
          ),
        )
      ],
    );
  }
}
