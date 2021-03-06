import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_value.dart';
import 'package:responsive_framework/responsive_wrapper.dart';

class ResponsiveMenuAction extends StatelessWidget {
  const ResponsiveMenuAction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        ResponsiveVisibility(
          visible: false,
          visibleWhen: const [Condition.smallerThan(name: TABLET)],
          child:
              IconButton(onPressed: () => {}, icon: const Icon(Icons.search)),
        ),
        const SizedBox(width: 4),
        IconButton(onPressed: () => {}, icon: const Icon(Icons.home)),
        const SizedBox(width: 4),
        IconButton(onPressed: () => {}, icon: const Icon(Icons.send)),
        const SizedBox(width: 4),
        IconButton(
            onPressed: () => {}, icon: const Icon(Icons.favorite_border)),
        const SizedBox(width: 4),
        const CircleAvatar(
          radius: 16,
          backgroundImage: NetworkImage(
              'https://avatars.githubusercontent.com/u/19862234?v=4'),
        ),
      ],
    );
  }
}
