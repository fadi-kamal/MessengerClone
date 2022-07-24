import 'package:flutter/material.dart';
import 'package:messenger_clone/view/screen/bottom/body/container_bottom_bar.dart';


class CustomBottomBar extends StatelessWidget {
  const CustomBottomBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: ContainerBottomBar(),
    );
  }
}



