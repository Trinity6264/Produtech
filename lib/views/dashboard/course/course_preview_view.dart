import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:produtech/helpers/asset_pallet.dart';
import 'package:produtech/views/dashboard/course/widget/course_preview_cat.dart';
import 'package:produtech/views/dashboard/course/widget/timeline_widget.dart';
import 'package:produtech/widget/auth_button.dart';

class CoursePreviewView extends StatelessWidget {
  const CoursePreviewView({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AssetPallet.whiteColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                height: size.height * .4,
                color: AssetPallet.darkGrayColor,
              ),
              Container(
                width: double.infinity,
                height: size.height * .07,
                color: AssetPallet.seaBlueColor,
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  'Fundamental of Design Thinking',
                  style: GoogleFonts.poppins(
                    color: AssetPallet.primaryColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: size.height * .35,
                color: AssetPallet.deepBlueColor.withOpacity(.6),
                alignment: Alignment.centerLeft,
                child: Column(
                  children: [
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 10,
                        ),
                        alignment: Alignment.centerLeft,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              width: size.width * .3,
                              height: size.height * .03,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: AssetPallet.grayColor,
                              ),
                              child: Text(
                                'Design',
                                style: GoogleFonts.poppins(
                                  color: AssetPallet.primaryColor,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            const SizedBox(height: 10),
                            Expanded(
                              child: Text(
                                'sdjkajdsladljdldjdsljsdljj,dkfshk dhfhhkfjdfhjdgjdgl sdkjkdfkjdfnjdg dljhfskjf djsfhshsfhhfshs sdjkkfskjfsnf fsljfjjgd sflkujgjgdj fsjsfjgjgjd ',
                                textAlign: TextAlign.start,
                                style: GoogleFonts.poppins(
                                  color: AssetPallet.grayColor,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        alignment: Alignment.center,
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              AssetPallet.primaryColor,
                              AssetPallet.seaBlueColor,
                              AssetPallet.lightSeaBlueColor,
                            ],
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: const [
                            CoursePreviewCat(
                              iconData: Icons.people_outline,
                              title: 'Students',
                              subTitle: '365',
                            ),
                            CoursePreviewCat(
                              iconData: Icons.category_sharp,
                              title: 'Lessons',
                              subTitle: '16',
                            ),
                            CoursePreviewCat(
                              iconData: Icons.access_time,
                              title: 'Duration',
                              subTitle: '1h 23m',
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: size.height * .02),
              Container(
                margin: const EdgeInsets.only(left: 10),
                width: size.width * 0.4,
                height: size.height * 0.045,
                child: AuthButton(onPressed: () {}, text: 'Add to Basket'),
              ),
              SizedBox(height: size.height * .02),
              Container(
                margin: const EdgeInsets.only(left: 10),
                child: Text(
                  'Curriculum',
                  style: GoogleFonts.poppins(
                    color: AssetPallet.primaryColor,
                    fontWeight: FontWeight.w600,
                    fontSize: 18.0,
                  ),
                ),
              ),
              SizedBox(height: size.height * .02),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children:
                      List.generate(20, (index) => const TimeLineWidget()),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
