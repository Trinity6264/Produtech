import 'package:flutter/material.dart';
import 'package:produtech/widget/custom_appbar.dart';

class LearningView extends StatelessWidget {
  const LearningView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppbar(context, SizedBox()),
    );
  }
}
