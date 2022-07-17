import 'package:flutter/material.dart';
import 'package:insta_web/pages/home/widgets/story_circle.dart';
import 'package:responsive_framework/responsive_framework.dart';

class StoriesList extends StatelessWidget {
  const StoriesList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Returns a boolean
    final mobile = ResponsiveWrapper.of(context).isMobile;

    return Container(
      margin: EdgeInsets.only(top: mobile ? 15 : 35),
      height: 110,
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        itemCount: 40,
        scrollDirection: Axis.horizontal,
        separatorBuilder: (_, __) => const SizedBox(width: 16),
        itemBuilder: (_, i) => const StoryCircle(),
      ),
    );
  }
}
