// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:produtech/helpers/asset_pallet.dart';

AppBar customAppbar(BuildContext context, Widget child) {
  Size size = MediaQuery.of(context).size;
  return AppBar(
    toolbarHeight: size.height * 0.2,
    backgroundColor: Colors.transparent,
    automaticallyImplyLeading: false,
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
        child: child),
  );
}
