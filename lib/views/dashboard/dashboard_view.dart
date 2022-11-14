import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:produtech/app/app.gr.dart';
import 'package:produtech/helpers/asset_pallet.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});
  static int currentScreen = 0;

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      routes: const [
        ExploreViewRoute(),
        LearningViewRoute(),
        SavedViewRoute(),
        ProfileViewRoute(),
      ],
      curve: Curves.ease,
      builder: (context, child, animation) {
        final tabsRouter = AutoTabsRouter.of(context);

        return Scaffold(
          key: const PageStorageKey('dashboard'),
          backgroundColor: AssetPallet.whiteColor,
          body: SafeArea(
            child: child,
          ),
          bottomNavigationBar: BottomNavigationBar(
            unselectedItemColor: AssetPallet.seaBlueColor,
            backgroundColor: AssetPallet.whiteColor,
            fixedColor: AssetPallet.deepBlueColor,
            currentIndex: tabsRouter.activeIndex,
            onTap: (index) {
              tabsRouter.setActiveIndex(index);
            },
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Explore',
                tooltip: 'Explore Page',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.menu_book),
                label: 'Learning',
                tooltip: 'Learning Page',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.file_download_outlined),
                label: 'Saved',
                tooltip: 'Saved Page',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person_outlined),
                label: 'My account',
                tooltip: 'Profile Page',
              ),
            ],
            type: BottomNavigationBarType.fixed,
          ),
        );
      },
    );
  }
}
