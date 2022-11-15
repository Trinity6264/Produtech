import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:produtech/helpers/asset_pallet.dart';
import 'package:produtech/widget/course_card.dart';
import 'package:produtech/widget/custom_appbar.dart';
import 'package:produtech/widget/explore_course_card.dart';

class CourseView extends HookWidget {
  const CourseView({super.key});

  @override
  Widget build(BuildContext context) {
    final searchTextController = useTextEditingController();
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: customAppbar(
        context,
        customAppbar(
          context,
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const BackButton(color: AssetPallet.whiteColor),
                  const SizedBox(width: 10),
                  Text(
                    'Courses',
                    style: GoogleFonts.poppins(
                      color: AssetPallet.whiteColor,
                      letterSpacing: 1.2,
                      fontSize: 20.0,
                    ),
                  ),
                ],
              ),
              Container(
                width: double.infinity,
                height: size.height * .06,
                padding: const EdgeInsets.only(right: 10),
                decoration: BoxDecoration(
                  color: AssetPallet.whiteColor,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: TextField(
                  controller: searchTextController,
                  textInputAction: TextInputAction.search,
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Search for Course',
                    prefixIcon: Icon(Icons.search),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: SingleChildScrollView(
          child: Column(
            children: [
              GridView.builder(
                shrinkWrap: true,
                itemCount: 10,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10.0,
                ),
                itemBuilder: (context, index) {
                  return const ExploreCourseCard();
                  // return const SizedBox();
                },
              ),
              SizedBox(height: size.height * 0.02),
              const CourseCard(),
              SizedBox(height: size.height * 0.02),
              const CourseCard(),
            ],
          ),
        ),
      ),
    );
  }
}
