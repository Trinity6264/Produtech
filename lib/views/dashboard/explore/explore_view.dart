import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:produtech/helpers/asset_pallet.dart';
import 'package:produtech/views/dashboard/explore/widget/course_panel.dart';
import 'package:produtech/widget/course_card.dart';
import 'package:produtech/widget/leaderBoard.dart';
import 'package:produtech/widget/test_card.dart';
import 'package:produtech/widget/title_widget.dart';
import 'package:produtech/widget/video_card.dart';

class ExploreView extends StatelessWidget {
  const ExploreView({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: size.height * 0.2,
        backgroundColor: Colors.transparent,
        elevation: 0,
        flexibleSpace: Container(
          padding: const EdgeInsets.fromLTRB(10, 20, 10, 10),
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                AssetPallet.primaryColor,
                AssetPallet.primaryColor,
                AssetPallet.whiteColor,
              ],
            ),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(40),
              bottomRight: Radius.circular(40),
            ),
          ),
          child: SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Row(
              children: [
                Expanded(
                  child: ListTile(
                    title: Text(
                      'Hi, Amina',
                      style: GoogleFonts.poppins(
                        color: AssetPallet.grayColor,
                        fontSize: 20.0,
                        letterSpacing: 1.2,
                      ),
                    ),
                    subtitle: Text(
                      'Let\'s start learning',
                      style: GoogleFonts.poppins(
                        color: AssetPallet.grayColor,
                        letterSpacing: 1.2,
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    width: size.width * 0.12,
                    height: size.height * 0.06,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: AssetPallet.grayColor,
                    ),
                    child: const Icon(
                      Icons.notifications,
                      color: AssetPallet.deepBlueColor,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    width: size.width * 0.12,
                    height: size.height * 0.06,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: AssetPallet.grayColor,
                    ),
                    child: const Icon(
                      Icons.shopping_bag,
                      color: AssetPallet.deepBlueColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: size.height * .04),
              const TitleWidget(title: 'Courses for you'),
              SizedBox(height: size.height * .04),
              const CoursePanel(),
              SizedBox(height: size.height * .04),
              const TitleWidget(title: 'Book a class'),
              SizedBox(height: size.height * .04),
              const CourseCard(),
              SizedBox(height: size.height * .04),
              const TitleWidget(title: 'Leader Board'),
              SizedBox(height: size.height * .04),
              LeaderBoard(),
              SizedBox(height: size.height * .04),
              const TitleWidget(title: 'What\'s hot'),
              SizedBox(height: size.height * .04),
              const VideoCard(),
              SizedBox(height: size.height * .04),
              const TitleWidget(title: 'Quick Test'),
              SizedBox(height: size.height * .04),
              const TestCard(),
              SizedBox(height: size.height * .04),
            ],
          ),
        ),
      ),
    );
  }
}
