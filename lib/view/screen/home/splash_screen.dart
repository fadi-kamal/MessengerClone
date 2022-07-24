import 'package:flutter/material.dart';
import 'package:messenger_clone/view/screen/bottom/custom_bottom_bar.dart';
import 'package:messenger_clone/view/screen/home/body/body_chat.dart';
import 'package:messenger_clone/view/widget/custom_appBar.dart';


class SplashScreen extends StatefulWidget {
  SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarCustom(),
      body: BodyChat(),
      bottomNavigationBar: CustomBottomBar(),
    );
  }
}

