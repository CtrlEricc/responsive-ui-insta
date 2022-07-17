import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StoryCircle extends StatelessWidget {
  const StoryCircle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 66,
          width: 66,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
              colors: [
                Colors.blue,
                Colors.green,
              ],
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
            ),
          ),
          alignment: Alignment.center,
          child: Container(
            height: 60,
            width: 60,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.black87,
            ),
            alignment: Alignment.center,
            child: const CircleAvatar(
              radius: 26,
              backgroundImage: NetworkImage(
                  'https://avatars.githubusercontent.com/u/19862234?v=4'),
            ),
          ),
        ),
        const SizedBox(height: 5),
        const Text(
          'ctrl.eric',
          style: TextStyle(color: Colors.white, fontSize: 12),
        )
      ],
    );
  }
}
