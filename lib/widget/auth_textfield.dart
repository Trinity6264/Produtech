// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:produtech/helpers/asset_pallet.dart';

class AuthTextField extends StatelessWidget {
  final TextEditingController controller;
  final bool isHavingIcon;
  final bool isSeen;
  final IconData? icon;
  final String hintText;
  final VoidCallback? onTap;

  const AuthTextField({
    Key? key,
    required this.controller,
    this.isHavingIcon = false,
    this.isSeen = true,
    this.icon,
    required this.hintText,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: isSeen,
      decoration: InputDecoration(
        hintText: hintText,
        enabled: true,
        suffixIcon: isHavingIcon
            ? IconButton(
                onPressed: onTap,
                icon: Icon(
                  icon,
                  color: AssetPallet.primaryColor,
                ),
              )
            : null,
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: AssetPallet.primaryColor,
          ),
        ),
      ),
    );
  }
}
