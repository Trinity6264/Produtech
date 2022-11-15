import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:produtech/helpers/asset_pallet.dart';
import 'package:produtech/widget/custom_appbar.dart';

class NotificationView extends StatelessWidget {
  const NotificationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppbar(
        context,
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const BackButton(color: AssetPallet.whiteColor),
            const SizedBox(width: 10),
            Text(
              'Notification',
              style: GoogleFonts.poppins(
                color: AssetPallet.whiteColor,
                letterSpacing: 1.2,
                fontSize: 20.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
