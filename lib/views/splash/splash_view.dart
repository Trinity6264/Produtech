import 'package:flutter/material.dart';
import 'package:produtech/app/locator.dart';
import 'package:produtech/app/routePath.dart';

import 'package:produtech/helpers/asset_pallet.dart';
import 'package:produtech/services/navigation.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  // wait for three sec before navigating

  final _navService = locator.get<NavigationService>();

  void waitAWhile() {
    Future.delayed(
      const Duration(seconds: 3),
      () => _navService.replaceNamed(RoutePath.authPath),
    );
  }

  @override
  void initState() {
    waitAWhile();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(AssetPallet.coverPic),
                fit: BoxFit.cover,
                alignment: Alignment.center,
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: double.infinity,
            color: AssetPallet.primaryColor.withOpacity(.9),
            child: Image.asset(AssetPallet.logoPic),
          ),
        ],
      ),
    );
  }
}
