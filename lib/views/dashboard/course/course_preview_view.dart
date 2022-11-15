import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:produtech/helpers/asset_pallet.dart';

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
            children: [
              Container(
                width: double.infinity,
                height: size.height * 0.2,
                color: AssetPallet.darkGrayColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
