import 'package:flutter/material.dart';
import 'package:messenger_clone/controller/container_controllre.dart';
import 'package:provider/provider.dart';

class AnimatedCustomBottomBar extends StatelessWidget {
  const AnimatedCustomBottomBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<ContainerController>(
        builder: (context, val, child) => AnimatedPositioned(
              duration: Duration(milliseconds: 300),
              curve: Curves.easeInOutBack,
              left: val.left,
              top: 8,
              child: Card(
                color: Colors.amber,
                elevation: 3.5,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                child: AnimatedContainer(
                  alignment: Alignment.center,
                  duration: Duration(milliseconds: 200),
                  height: 45,
                  width: 105,
                  decoration: BoxDecoration(
                      // color: Colors.amber,
                      // borderRadius: BorderRadius.circular(20),
                      // border:Border.all(color: Colors.black, width: 0.2)
                          ),
                ),
              ),
            ));
  }
}

