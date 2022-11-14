import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:produtech/helpers/asset_pallet.dart';
import 'package:produtech/views/dashboard/saved/widget/saved_course_list.dart';

class SavedView extends HookWidget {
  const SavedView({super.key});

  @override
  Widget build(BuildContext context) {
    final searchTextController = useTextEditingController();
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
            child: Column(
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
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        alignment: Alignment.center,
        child: const SavedCourseList(),
      ),
    );
  }
}
