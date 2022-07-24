import 'package:flutter/material.dart';
import 'package:messenger_clone/controller/controller_provider.dart';
import 'package:messenger_clone/data/dataSource/static/image_app_story.dart';
import 'package:provider/provider.dart';

class CustomStory extends StatelessWidget {
  const CustomStory({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<Controller>(
      builder: (context, theme, child) {
        return  Card(
          elevation: 3.5,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          child: AnimatedContainer(
            duration: Duration(milliseconds: 300),
              margin: EdgeInsets.all(5),
              height: 115,
              decoration: BoxDecoration(
            // color: theme.darkTheme?  Colors.transparent : Colors.white,
            // boxShadow: [
            //   theme.darkTheme ? BoxShadow ( 
            //     color: Colors.transparent):
            //      BoxShadow(
            //     blurRadius: 10,
            //     spreadRadius: 1,
            //     color: Colors.grey, 
            //     offset: Offset(5 , 1)
            //   ),
            //   theme.darkTheme ? BoxShadow ( 
            //     color: Colors.transparent):
            //   BoxShadow(
            //     blurRadius: 10,
            //     spreadRadius: 1,
            //     color: Colors.white, 
            //     offset: Offset(-5 , -1)
            //   )
            // ],
            // borderRadius: BorderRadius.circular(10),
            ),
              child: Expanded(
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
              itemCount: images.length,
              itemBuilder: (context, i) {
                return Column(
                  children: [
                    Container(
                      margin : EdgeInsets.all(10),
                      height: 70, 
                      width: 70,
                      decoration: BoxDecoration( 
                        borderRadius: BorderRadius.circular(50), 
                        border: Border.all( color :i.isEven ? Colors.teal:  Colors.pink, width: 4),
                        image: DecorationImage(
                          image: AssetImage(images[i].image), 
                          fit: BoxFit.cover
                        )
                      ),
                    ),
                    Text(images[i].name)                ],
                );
              }),
              ),
            ),
        );
      },
    );
  }
}
