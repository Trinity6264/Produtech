import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:produtech/helpers/asset_pallet.dart';

class SavedCourseList extends StatelessWidget {
  const SavedCourseList({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return Container(
          width: double.infinity,
          height: size.height * 0.13,
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
          margin: const EdgeInsets.symmetric(vertical: 5),
          decoration: BoxDecoration(
            color: AssetPallet.seaBlueColor,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            children: [
              Container(
                width: size.width * 0.2,
                height: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  image: const DecorationImage(
                    image: AssetImage(AssetPallet.coverPic),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Financial Analysis for Acco unting',
                      overflow: TextOverflow.ellipsis,
                      style: GoogleFonts.poppins(
                        fontSize: 16.0,
                      ),
                    ),
                    Row(
                      children: const [
                        Icon(
                          Icons.person_outline_outlined,
                          color: AssetPallet.darkColor,
                        ),
                        SizedBox(width: 10),
                        Text(
                          'Gerald Manu Bonsu',
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          '17:06 mins',
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          'Lesson: 05',
                          overflow: TextOverflow.ellipsis,
                        ),
                        Icon(
                          Icons.play_circle_outline_outlined,
                          color: AssetPallet.primaryColor,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
