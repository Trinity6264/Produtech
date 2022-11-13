import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:produtech/app/locator.dart';
import 'package:produtech/app/routePath.dart';
import 'package:produtech/helpers/asset_pallet.dart';
import 'package:produtech/services/navigation.dart';
import 'package:produtech/widget/auth_button.dart';

class AuthView extends StatelessWidget {
  const AuthView({super.key});

  static final _navService = locator.get<NavigationService>();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(AssetPallet.coverPic),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: double.infinity,
            color: AssetPallet.aliceBlueColor.withOpacity(0.9),
            child: Column(
              children: [
                SizedBox(height: size.height * 0.1),
                Image.asset(AssetPallet.logoPic),
                SizedBox(height: size.height * 0.05),
                Container(
                  width: double.infinity,
                  height: size.height * 0.6,
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: SizedBox(
                    width: double.infinity,
                    child: Column(
                      children: [
                        Expanded(
                          flex: 2,
                          child: Stack(
                            children: const [
                              Positioned(
                                left: 25,
                                child: CircleAvatar(
                                  maxRadius: 70,
                                  backgroundImage: AssetImage(
                                    AssetPallet.studentPic1,
                                  ),
                                ),
                              ),
                              Positioned(
                                right: 20,
                                top: 60,
                                child: CircleAvatar(
                                  maxRadius: 70,
                                  backgroundImage: AssetImage(
                                    AssetPallet.studentPic2,
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 25,
                                bottom: 10,
                                child: CircleAvatar(
                                  maxRadius: 70,
                                  backgroundImage: AssetImage(
                                    AssetPallet.studentPic3,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Column(
                            children: [
                              Text(
                                'Welcome to Prodigee',
                                style: GoogleFonts.poppins(
                                  color: AssetPallet.deepBlueColor,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 32.0,
                                ),
                              ),
                              SizedBox(height: size.height * .02),
                              Text(
                                'Join over 1000 people who are improving thier tech skills with our technical courses',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.poppins(
                                  color: AssetPallet.darkColor,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Flexible(
                  child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        AuthButton(
                            onPressed: () {
                              _navService.pushNamed(RoutePath.signUpPath);
                            },
                            text: 'Register'),
                        AuthButton(
                            onPressed: () {
                              _navService.pushNamed(RoutePath.loginPath);
                            },
                            text: 'Log In'),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
