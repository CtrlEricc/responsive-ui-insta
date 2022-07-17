import 'package:flutter/material.dart';
import 'package:insta_web/pages/home/widgets/stories_list.dart';
import 'widgets/post_widget.dart';
import 'widgets/responsive_app_bar.dart';
import 'widgets/right_panel.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: const PreferredSize(
        preferredSize: Size(double.infinity, 53),
        child: ResponsiveAppBar(),
      ),
      body: Align(
        alignment: Alignment.topCenter,
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 1000),
          child: Row(
            children: [
              Expanded(
                child: ListView(
                  children: const [
                    StoriesList(),
                    PostWidget(),
                    PostWidget(),
                    PostWidget(),
                  ],
                ),
              ),
              const RightPanel(),
            ],
          ),
        ),
      ),
    );
  }
}
