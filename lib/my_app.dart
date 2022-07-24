import 'package:flutter/material.dart';
import 'package:messenger_clone/controller/container_controllre.dart';
import 'package:messenger_clone/controller/controller_provider.dart';
import 'package:messenger_clone/view/screen/home/splash_screen.dart';
import 'package:provider/provider.dart';

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => Controller()),
          ChangeNotifierProvider(create: (context) => ContainerController())
        ],
        child: Consumer<Controller>(
          builder: (context, controller, child) {
            return MaterialApp(
                theme: controller.darkTheme == false ? lightTheme : darkTheme,
                debugShowCheckedModeBanner: false,
                home: SplashScreen());
          },
        ));
  }
}
