import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:produtech/app/locator.dart';
import 'package:produtech/app/routePath.dart';
import 'package:produtech/helpers/asset_pallet.dart';
import 'package:produtech/services/navigation.dart';

class ExploreCourseCard extends StatelessWidget {
  const ExploreCourseCard({super.key});
  static final _navService = locator.get<NavigationService>();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () => _navService.replaceNamed(RoutePath.coursePreviewPath),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 15),
        height: double.infinity,
        width: 100,
        padding: const EdgeInsets.only(top: 10, bottom: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: AssetPallet.seaBlueColor.withOpacity(.6),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  margin: const EdgeInsets.only(right: 3),
                  alignment: Alignment.center,
                  width: size.width * .1,
                  height: size.height * 0.03,
                  decoration: const BoxDecoration(
                    color: AssetPallet.primaryColor,
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.arrow_right_alt_rounded,
                    size: 18,
                    color: AssetPallet.whiteColor,
                  ),
                ),
              ],
            ),
            SizedBox(height: size.height * .02),
            Container(
              alignment: Alignment.centerLeft,
              margin: const EdgeInsets.only(left: 5),
              child: Text(
                'Web Development',
                textAlign: TextAlign.start,
                style: GoogleFonts.poppins(
                  color: AssetPallet.deepBlueColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: size.height * 0.03),
            Padding(
              padding: const EdgeInsets.only(left: 5),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Icon(
                          Icons.badge,
                          color: AssetPallet.primaryColor,
                        ),
                        SizedBox(height: size.height * .01),
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: 'Enrolled  ',
                                style: GoogleFonts.poppins(
                                  color: AssetPallet.darkColor,
                                  fontSize: 12.0,
                                ),
                              ),
                              TextSpan(
                                text: '884',
                                style: GoogleFonts.poppins(
                                  color: AssetPallet.primaryColor,
                                  // fontSize: 12.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: size.width * 0.2,
                    height: size.height * 0.08,
                    decoration: const BoxDecoration(
                      color: AssetPallet.whiteColor,
                      shape: BoxShape.circle,
                    ),
                    child: const CircleAvatar(
                      backgroundImage: AssetImage(AssetPallet.coverPic),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
