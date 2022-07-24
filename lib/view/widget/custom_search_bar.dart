import 'package:flutter/material.dart';
import 'package:messenger_clone/controller/controller_provider.dart';
import 'package:provider/provider.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<Controller>(
      builder: (context, theme, child) => AnimatedContainer(
        duration: Duration(milliseconds: 300),
        margin: EdgeInsets.all(5),
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
              color: theme.darkTheme ? Colors.yellow : Colors.black,
              width: 2),
        ),
        child: Row(
          children: [
            SizedBox(width: 10),
            Icon(
              Icons.search,
              size: 35,
              color: Colors.grey,
            ),
            SizedBox(width: 20),
            Text(
              "Search",
              style: TextStyle(fontSize: 25, color: Colors.grey),
            )
          ],
        ),
      ),
    );
  }
}
