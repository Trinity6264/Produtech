// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:produtech/helpers/asset_pallet.dart';

class PaymentOptionWidget extends StatelessWidget {
  final bool isActive;
  final VoidCallback onTap;
  final String title;
  const PaymentOptionWidget({
    Key? key,
    required this.isActive,
    required this.onTap,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: AnimatedContainer(
          duration: const Duration(
            milliseconds: 300,
          ),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: isActive ? AssetPallet.primaryColor : AssetPallet.whiteColor,
          ),
          child: Text(
            title,
            style: GoogleFonts.poppins(
              color:
                  isActive ? AssetPallet.whiteColor : AssetPallet.primaryColor,
              fontWeight: FontWeight.w500,
              fontSize: 18.0,
            ),
          ),
        ),
      ),
    );
  }
}
