import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:produtech/helpers/asset_pallet.dart';

import 'package:produtech/views/dashboard/explore/widget/ranking_circle.dart';

class ThisMonth extends StatelessWidget {
  int no = 4; ThisMonth({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: size.height * 0.23,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              RankingCircle(
                points: '3000 xp',
                rank: '2',
              ),
              RankingCircle(
                points: '6000 xp',
                rank: '1',
                isFirst: true,
              ),
              RankingCircle(
                points: '1000 xp',
                rank: '3',
              ),
            ],
          ),
        ),
        const Divider(color: AssetPallet.primaryColor),
        SizedBox(
          width: double.infinity,
          height: size.height * 0.3,
          child: ListView.separated(
            physics: const NeverScrollableScrollPhysics(),
            separatorBuilder: (context, index) =>
                const Divider(color: AssetPallet.primaryColor),
            itemCount: 4,
            itemBuilder: (context, index) {
              return SizedBox(
                width: double.infinity,
                height: size.height * 0.058,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '${no += 1}',
                      style: GoogleFonts.poppins(
                        color: AssetPallet.darkColor,
                      ),
                    ),
                    const CircleAvatar(
                      maxRadius: 20,
                      backgroundImage: AssetImage(AssetPallet.coverPic),
                    ),
                    Text(
                      'USER X${index += 2} Name',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Container(
                      width: size.width * 0.25,
                      height: size.height * 0.03,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: AssetPallet.primaryColor,
                      ),
                      child: Text(
                        '1000xp',
                        style: GoogleFonts.poppins(
                          color: AssetPallet.darkColor,
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
        const Divider(color: AssetPallet.primaryColor),
        TextButton(
          onPressed: () {},
          child: Text(
            'SEE ALL',
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(
              color: AssetPallet.primaryColor,
              fontWeight: FontWeight.w600,
              fontSize: 18.0,
            ),
          ),
        ),
      ],
    );
  }
}
