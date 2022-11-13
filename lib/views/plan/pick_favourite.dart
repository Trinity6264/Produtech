import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:produtech/app/locator.dart';
import 'package:produtech/app/routePath.dart';
import 'package:produtech/controllers/auth/pick_favorite_controller.dart';
import 'package:produtech/helpers/asset_pallet.dart';
import 'package:produtech/services/navigation.dart';
import 'package:produtech/widget/auth_button.dart';
import 'package:provider/provider.dart';

class PickFavoritesView extends StatelessWidget {
  const PickFavoritesView({super.key});

  static const listOfFavourite = [
    {
      'id': 0,
      'label': 'Coding',
      'emoji': '💻',
    },
    {
      'id': 1,
      'label': 'Design',
      'emoji': '👨‍🎨',
    },
    {
      'id': 2,
      'label': 'Marketing',
      'emoji': '👜',
    },
    {
      'id': 3,
      'label': 'Analysis',
      'emoji': '📈',
    },
    {
      'id': 4,
      'label': 'Research',
      'emoji': '📢',
    },
    {
      'id': 5,
      'label': 'Animation',
      'emoji': '🎞️',
    },
    {
      'id': 6,
      'label': 'Finance',
      'emoji': '💰',
    },
    {
      'id': 7,
      'label': 'Public Relation',
      'emoji': '🎙️',
    },
    {
      'id': 8,
      'label': 'Development',
      'emoji': '👱',
    },
  ];
  static final _navService = locator.get<NavigationService>();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // final pickFavoriteController = context.read<PickFavoriteController>();
    return Scaffold(
      backgroundColor: AssetPallet.whiteColor,
      appBar: AppBar(
        backgroundColor: AssetPallet.whiteColor,
        elevation: 0,
        iconTheme: const IconThemeData(
          color: AssetPallet.deepBlueColor,
          size: 30.0,
        ),
      ),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Pick your Favorites',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    color: AssetPallet.deepBlueColor,
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: size.height * .1),
                SizedBox(
                  width: double.infinity,
                  height: size.height * .6,
                  child: GridView.builder(
                    itemCount: listOfFavourite.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      mainAxisSpacing: 20,
                      crossAxisSpacing: 20,
                    ),
                    itemBuilder: (context, index) {
                      final item = listOfFavourite[index];
                      return Column(
                        children: [
                          Expanded(
                            child: Consumer<PickFavoriteController>(
                              builder: (context, value, child) {
                                return GestureDetector(
                                  onTap: () {
                                    value.onTap(item);
                                  },
                                  child: AnimatedContainer(
                                    duration: const Duration(milliseconds: 300),
                                    height: size.height * 0.1,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      color: value.lisOfPicks.contains(item)
                                          ? AssetPallet.lightSeaBlueColor
                                          : null,
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(
                                        color: AssetPallet.primaryColor,
                                      ),
                                    ),
                                    child: Text(
                                      '${item['emoji']}',
                                      style: const TextStyle(
                                        fontSize: 50.0,
                                      ),
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                          SizedBox(height: size.height * .01),
                          Text(
                            '${item['label']}',
                            style: GoogleFonts.poppins(
                              color: AssetPallet.primaryColor,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),
                SizedBox(height: size.height * .05),
                AuthButton(
                  onPressed: () {
                    _navService.pushNamed(RoutePath.uniqueCodePath);
                  },
                  text: 'Continue',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
