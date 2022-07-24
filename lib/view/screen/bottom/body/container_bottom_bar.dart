import 'package:flutter/material.dart';
import 'package:messenger_clone/view/widget/animated_custom_bottom_bar.dart';
import 'package:messenger_clone/view/widget/bottom_bar_icons.dart';

class ContainerBottomBar extends StatelessWidget {
  const ContainerBottomBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 10,
      child: Stack(
        children: [
          AnimatedCustomBottomBar(),
          BottomBarIcons()
        ],
      ),
    );
  }
}