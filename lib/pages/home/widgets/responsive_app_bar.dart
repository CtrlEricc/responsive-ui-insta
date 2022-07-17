import 'package:flutter/material.dart';
import 'package:insta_web/pages/home/widgets/responsive_menu_action.dart';
import 'package:responsive_framework/responsive_framework.dart';

class ResponsiveAppBar extends StatelessWidget {
  const ResponsiveAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      elevation: 1,
      title: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 1000),
          child: Row(children: [
            const Expanded(
              child: MouseRegion(
                cursor: SystemMouseCursors.click,
                child: Text(
                  'Photos',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontFamily: 'Billabong',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            ResponsiveVisibility(
              visible: false,
              visibleWhen: const [
                Condition.largerThan(name: MOBILE),
              ],
              child: Expanded(
                child: Align(
                  alignment: Alignment.center,
                  child: Container(
                    width: 200,
                    height: 30,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(
                            Icons.search,
                            color: Colors.white,
                            size: 15,
                          ),
                          SizedBox(width: 4),
                          Expanded(
                            child: TextField(
                              style: TextStyle(fontSize: 14, color: Colors.white),
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                isCollapsed: true,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const ResponsiveVisibility(
              visible: false,
              visibleWhen: [
                Condition.largerThan(name: MOBILE),
              ],
              // When condition is false
              replacement: ResponsiveMenuAction(),
              // When condition is true
              child: Expanded(child: ResponsiveMenuAction()),
            )
          ]),
        ),
      ),
    );
  }
}
