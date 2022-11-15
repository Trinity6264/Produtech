import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:produtech/controllers/dashboard/basket/basket_controller.dart';
import 'package:produtech/helpers/asset_pallet.dart';
import 'package:produtech/views/dashboard/basket/widget/payment_option.dart';
import 'package:produtech/widget/custom_appbar.dart';
import 'package:provider/provider.dart';

class BasketView extends StatelessWidget {
  const BasketView({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: customAppbar(
        context,
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const BackButton(color: AssetPallet.whiteColor),
            const SizedBox(width: 10),
            Text(
              'Course basket',
              style: GoogleFonts.poppins(
                color: AssetPallet.whiteColor,
                letterSpacing: 1.2,
                fontSize: 20.0,
              ),
            ),
          ],
        ),
      ),
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Container(
                    width: double.infinity,
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    height: size.height * 0.5,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: AssetPallet.seaBlueColor.withOpacity(.7),
                    ),
                    child: Column(
                      children: [
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  width: size.height * 0.1,
                                  height: size.height * 0.1,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: AssetPallet.whiteColor,
                                  ),
                                  child: Image.asset(AssetPallet.settingsImg),
                                ),
                                const SizedBox(width: 10),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Web Development',
                                        style: GoogleFonts.poppins(
                                          color: AssetPallet.primaryColor,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 17.0,
                                        ),
                                      ),
                                      SizedBox(height: size.height * .007),
                                      Text(
                                        'Instructor Prodigee In-house',
                                        style: GoogleFonts.poppins(
                                          color: AssetPallet.darkGrayColor,
                                        ),
                                      ),
                                      SizedBox(height: size.height * .007),
                                      Text(
                                        'Lessons: 25',
                                        style: GoogleFonts.poppins(
                                          color: AssetPallet.darkGrayColor,
                                        ),
                                      ),
                                      SizedBox(height: size.height * .007),
                                      Text(
                                        'Duration: 22hrs 3mins',
                                        style: GoogleFonts.poppins(
                                          color: AssetPallet.darkGrayColor,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const Divider(color: AssetPallet.primaryColor),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    'Payment Options',
                                    textAlign: TextAlign.start,
                                    style: GoogleFonts.poppins(
                                      color: AssetPallet.primaryColor,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 17.0,
                                    ),
                                  ),
                                ),
                                SizedBox(height: size.height * .01),
                                Container(
                                  width: double.infinity,
                                  height: size.height * 0.045,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: AssetPallet.whiteColor,
                                  ),
                                  child: Consumer<BasketController>(
                                    builder: (context, value, child) {
                                      return Row(
                                        children: [
                                          PaymentOptionWidget(
                                            isActive:
                                                value.selectedPaymentOption ==
                                                    PaymentOptions.monthly,
                                            onTap: () => value.setPaymentOption(
                                              PaymentOptions.monthly,
                                            ),
                                            title: 'Monthly',
                                          ),
                                          PaymentOptionWidget(
                                            isActive:
                                                value.selectedPaymentOption ==
                                                    PaymentOptions.complete,
                                            onTap: () => value.setPaymentOption(
                                              PaymentOptions.complete,
                                            ),
                                            title: 'Complete',
                                          ),
                                          PaymentOptionWidget(
                                            isActive:
                                                value.selectedPaymentOption ==
                                                    PaymentOptions.annual,
                                            onTap: () => value.setPaymentOption(
                                              PaymentOptions.annual,
                                            ),
                                            title: 'Annual',
                                          ),
                                        ],
                                      );
                                    },
                                  ),
                                ),
                                SizedBox(height: size.height * .01),
                                Expanded(
                                  child: Container(
                                    alignment: Alignment.center,
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 20,
                                    ),
                                    child: Text(
                                      'Get monthly access to the course until course completion',
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.poppins(
                                        color: AssetPallet.darkGrayColor,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const Divider(color: AssetPallet.primaryColor),
                        Container(
                          width: double.infinity,
                          height: size.height * .06,
                          alignment: Alignment.center,
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'Remove',
                                    style: GoogleFonts.poppins(
                                      color: AssetPallet.redColor,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  const SizedBox(width: 10),
                                  const Icon(
                                    Icons.delete,
                                    color: AssetPallet.redColor,
                                  ),
                                ],
                              ),
                              Text(
                                '\$59.99',
                                style: GoogleFonts.poppins(
                                  color: AssetPallet.darkColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            Container(
              width: double.infinity,
              height: size.height * 0.08,
              padding: const EdgeInsets.all(10),
              alignment: Alignment.center,
              child: GestureDetector(
                onTap: () {},
                child: Container(
                  height: double.infinity,
                  width: double.infinity,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: AssetPallet.deepBlueColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    'Proceed to checkout: \$88.90',
                    style: GoogleFonts.poppins(
                      color: AssetPallet.whiteColor,
                      fontWeight: FontWeight.w600,
                      fontSize: 18.0,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
