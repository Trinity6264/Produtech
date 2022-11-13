import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:produtech/helpers/asset_pallet.dart';

class AuthButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  const AuthButton({
    Key? key,
    required this.onPressed,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(
          text,
          // textAlign: TextAlign.center,
          style: GoogleFonts.poppins(
            color: AssetPallet.whiteColor,
            fontWeight: FontWeight.w500,
            fontSize: 18.0,
          ),
        ),
      ),
    );
  }
}
