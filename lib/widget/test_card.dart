import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:produtech/helpers/asset_pallet.dart';
import 'package:produtech/widget/auth_button.dart';

class TestCard extends StatelessWidget {
  const TestCard({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      width: double.infinity,
      height: size.height * 0.35,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: AssetPallet.aliceBlueColor,
      ),
      child: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 10),
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    AssetPallet.primaryColor,
                    AssetPallet.primaryColor,
                    AssetPallet.grayColor,
                  ],
                ),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8),
                  topRight: Radius.circular(8),
                ),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: ListTile(
                      title: Text(
                        'Daily Quick Test',
                        style: GoogleFonts.poppins(
                          color: AssetPallet.whiteColor,
                          letterSpacing: 1.2,
                        ),
                      ),
                      subtitle: Text(
                        'Free xp to earn',
                        style: GoogleFonts.poppins(
                          color: AssetPallet.whiteColor,
                          letterSpacing: 1.2,
                          fontSize: 13.0,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: double.infinity,
                    width: size.width * 0.3,
                    child: Image.asset(AssetPallet.coverPic),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 10),
          Expanded(
            flex: 2,
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Web development',
                    style: GoogleFonts.poppins(
                      color: AssetPallet.deepBlueColor,
                      fontWeight: FontWeight.w600,
                      backgroundColor: AssetPallet.primaryColor.withOpacity(.5),
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: size.height * 0.15,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Which of the following is not a HTML tag?',
                          style: GoogleFonts.poppins(
                            color: AssetPallet.darkColor,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: size.height * .005),
                        Text(
                          'a) <Img>',
                          style: GoogleFonts.poppins(
                            color: AssetPallet.darkColor,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: size.height * .005),
                        Text(
                          'b) <link>',
                          style: GoogleFonts.poppins(
                            color: AssetPallet.darkColor,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: size.height * .005),
                        Text(
                          'c) <p>',
                          style: GoogleFonts.poppins(
                            color: AssetPallet.darkColor,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: size.height * .005),
                        Text(
                          'd) <div>',
                          style: GoogleFonts.poppins(
                            color: AssetPallet.darkColor,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Flexible(
                    child: Container(
                      alignment: Alignment.centerRight,
                      child: SizedBox(
                        width: size.width * .3,
                        child: AuthButton(
                          onPressed: () {},
                          text: 'Take test',
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
