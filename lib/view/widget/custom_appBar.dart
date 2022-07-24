import 'package:flutter/material.dart';
import 'package:messenger_clone/controller/controller_provider.dart';
import 'package:provider/provider.dart';

class AppBarCustom extends StatelessWidget implements PreferredSizeWidget {
  const AppBarCustom({
    Key? key,
  }) : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(80);
  
  @override
  Widget build(BuildContext context) {
    return AppBar(
        actions: [
          Consumer<Controller>(
            builder: (context, theme, child) {
              return Row(
                children: [
                  IconButton(
                      color: theme.darkTheme ? Colors.yellow : Colors.white,
                      onPressed: () {
                        theme.getDark();
                      },
                      icon: theme.darkTheme
                          ? Icon(Icons.wb_sunny_outlined)
                          : Icon(Icons.dark_mode_outlined)),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.camera,
                        color: theme.darkTheme ? Colors.amber : Colors.white,
                      )),
                  IconButton(
                      onPressed: (() {}),
                      icon: Icon(
                        Icons.edit,
                        color: theme.darkTheme ? Colors.amber : Colors.white,
                      )),
                ],
              );
            },
          ),
        ],
        toolbarHeight: 80,
        leadingWidth: 80,
        title: Text("Messenger"),
        leading: Container(
          clipBehavior: Clip.none,
          margin: EdgeInsets.symmetric(horizontal: 8, vertical: 10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              image: DecorationImage(
                  image: AssetImage("assets/profile/ManOne.jpg"),
                  fit: BoxFit.cover)),
        ));
  }
}
