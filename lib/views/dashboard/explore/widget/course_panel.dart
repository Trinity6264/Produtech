import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:produtech/helpers/asset_pallet.dart';
import 'package:produtech/widget/explore_course_card.dart';

class CoursePanel extends HookWidget {
  const CoursePanel({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final _controller = usePageController(viewportFraction: 0.6);
    return SizedBox(
      width: double.infinity,
      height: size.height * 0.24,
      child: PageView.builder(
        itemCount: 10,
        controller: _controller,
        itemBuilder: (context, index) {
          return const ExploreCourseCard();
        },
      ),
    );
  }
}
