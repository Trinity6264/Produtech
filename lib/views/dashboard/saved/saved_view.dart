import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:produtech/helpers/asset_pallet.dart';
import 'package:produtech/views/dashboard/saved/widget/saved_course_list.dart';
import 'package:produtech/widget/custom_appbar.dart';

class SavedView extends HookWidget {
  const SavedView({super.key});

  @override
  Widget build(BuildContext context) {
    final searchTextController = useTextEditingController();
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: customAppbar(
        context,
        SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Saved Contents',
                style: GoogleFonts.poppins(
                  color: AssetPallet.grayColor,
                  fontSize: 20.0,
                  letterSpacing: 1.2,
                ),
              ),
              SizedBox(height: size.height * 0.05),
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
        padding: const EdgeInsets.symmetric(horizontal: 20),
        alignment: Alignment.center,
        child: const SavedCourseList(),
      ),
    );
  }
}
