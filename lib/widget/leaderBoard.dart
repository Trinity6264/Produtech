import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:produtech/controllers/dashboard/explore/explore_controller.dart';
import 'package:produtech/helpers/asset_pallet.dart';
import 'package:produtech/views/dashboard/explore/widget/thismonth.dart';
import 'package:produtech/views/dashboard/explore/widget/toggle_button.dart';
import 'package:provider/provider.dart';

class LeaderBoard extends StatelessWidget {
  const LeaderBoard({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final _exploreController = context.read<ExploreViewController>();

    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: AssetPallet.goldColor.withOpacity(.3),
        borderRadius: BorderRadius.circular(10),
      ),
      padding: const EdgeInsets.only(top: 10, bottom: 15, left: 20, right: 20),
      child: Column(
        children: [
          SizedBox(
            width: double.infinity,
            height: size.height * 0.2,
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    'Rank High Gain Prices',
                    style: GoogleFonts.poppins(
                      color: AssetPallet.darkColor,
                      fontWeight: FontWeight.w700,
                      fontSize: 20.0,
                    ),
                  ),
                ),
                SizedBox(
                  width: size.width * 0.5,
                  height: double.infinity,
                  child: Image.asset(AssetPallet.coverPic),
                ),
              ],
            ),
          ),
          SizedBox(height: size.height * .02),
          Container(
            width: double.infinity,
            height: size.height * 0.055,
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: AssetPallet.primaryColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Consumer<ExploreViewController>(
              builder: (context, value, child) {
                return Row(
                  children: [
                    ToggleButton(
                      isActive: value.selectedCat == RankCat.thisMonth,
                      title: 'This Month',
                      onpressed: _exploreController.toThisMonth,
                    ),
                    ToggleButton(
                      isActive: value.selectedCat == RankCat.allTime,
                      title: 'All time',
                      onpressed: _exploreController.toAllTime,
                    ),
                  ],
                );
              },
            ),
          ),
          SizedBox(height: size.height * .02),
          Consumer<ExploreViewController>(
            builder: (context, value, child) {
              return value.selectedCat == RankCat.thisMonth
                  ? ThisMonth()
                  : SizedBox.shrink();
            },
          ),
        ],
      ),
    );
  }
}
