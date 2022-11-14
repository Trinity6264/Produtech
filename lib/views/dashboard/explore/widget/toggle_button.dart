// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:produtech/helpers/asset_pallet.dart';

class ToggleButton extends StatelessWidget {
  final bool isActive;
  final String title;
  final VoidCallback onpressed;
  const ToggleButton({
    Key? key,
    required this.isActive,
    required this.onpressed,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onpressed,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: isActive ? AssetPallet.grayColor : null,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Text(
            title,
            style: GoogleFonts.poppins(
              color:
                  isActive ? AssetPallet.primaryColor : AssetPallet.grayColor,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
