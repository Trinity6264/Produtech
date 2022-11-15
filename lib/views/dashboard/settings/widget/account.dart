import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:produtech/helpers/asset_pallet.dart';

class AccountWidget extends StatelessWidget {
  const AccountWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: size.height * .01),
        
        Text(
          'Account',
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w600,
            color: AssetPallet.darkColor,
            fontSize: 18.0,
          ),
        ),
        SizedBox(height: size.height * .02),
        Container(
          width: double.infinity,
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: AssetPallet.grayColor,
          ),
          child: Column(
            children: [
              customLisTile(
                icon: Icons.lock,
                title: 'Password',
                onTap: () {},
              ),
              customLisTile(
                icon: Icons.notifications,
                title: 'Notification',
                onTap: () {},
              ),
              customLisTile(
                icon: Icons.security,
                title: 'Security',
                onTap: () {},
              ),
            ],
          ),
        ),
        SizedBox(height: size.height * .02),
        Text(
          'Support',
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w600,
            color: AssetPallet.darkColor,
            fontSize: 18.0,
          ),
        ),
        SizedBox(height: size.height * .02),
        Container(
          width: double.infinity,
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: AssetPallet.grayColor,
          ),
          child: Column(
            children: [
              customLisTile(
                icon: Icons.help_sharp,
                title: 'Help',
                onTap: () {},
              ),
              customLisTile(
                icon: Icons.color_lens,
                title: 'Theme',
                onTap: () {},
              ),
              customLisTile(
                icon: Icons.logout_outlined,
                title: 'Logout',
                onTap: () {},
              ),
            ],
          ),
        ),
        SizedBox(height: size.height * .02),
      ],
    );
  }

  ListTile customLisTile({
    required IconData icon,
    required String title,
    required VoidCallback onTap,
  }) {
    return ListTile(
      enabled: true,
      leading: Icon(icon),
      title: Text(
        title,
        style: GoogleFonts.poppins(
          color: AssetPallet.darkColor,
          fontWeight: FontWeight.w500,
        ),
      ),
      onTap: onTap,
      trailing: const Icon(
        Icons.arrow_forward_ios_sharp,
        color: AssetPallet.darkColor,
      ),
    );
  }
}
