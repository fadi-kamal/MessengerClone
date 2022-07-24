import 'package:flutter/material.dart';

class CustomContainerGroup extends StatelessWidget {
  CustomContainerGroup({
  required this.imageLight,
  required this.imageleft,
    Key? key,
  }) : super(key: key);

  final String imageLight;
  final String imageleft;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 95,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50)),
      child: Stack(
        children: [
        Positioned(
          right: 9,
          top: 10,
          child: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.pink, width: 3),
                borderRadius: BorderRadius.circular(50),
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/profile/$imageLight"))),
          ),
        ),
        Positioned(
          top: 40,
          left: 10,
          child: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.teal, width: 3),
                borderRadius: BorderRadius.circular(50),
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/profile/$imageleft"))),
          ),
        ),
      ]),
    );
  }
}
