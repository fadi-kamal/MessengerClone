import 'package:flutter/material.dart';
import 'package:messenger_clone/controller/container_controllre.dart';
import 'package:messenger_clone/data/dataSource/static/icon_bottom_bar.dart';
import 'package:provider/provider.dart';

class BottomBarIcons extends StatelessWidget {
  const BottomBarIcons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            
            Consumer<ContainerController>(
              builder: (context, chats, child) => Container(
                child: Row(
                  children: [
                    IconButton(
                      color:  Colors.black,
                        onPressed: () {
                          chats.changeLeftChat();
                        },
                        icon: icontext[0].icon),
                    Text(
                      "${icontext[0].text}",
                      style: TextStyle(
                        // fontSize: 18,
                        color: chats.textChat),
                    ),
                  ],
                ),
              ),
            ),
          
            Consumer<ContainerController>(
              builder: (context, people, child) => Container(
                child: Row(
                  children: [
                    IconButton(
                      color: Colors.black,
                        onPressed: () {
                          people.changeLeftPeople();
                        },
                        icon: icontext[1].icon ),
                    Text(
                      "${icontext[1].text}",
                      style: TextStyle(color: people.textPeople),
                    ),
                  ],
                ),
              ),
            ),
          
            Consumer<ContainerController>(
              builder: (context, stories, child) => Container(
                child: Row(
                  children: [
                    IconButton(
                      color:  Colors.black,
                        onPressed: () {
                          stories.changeLeftStories();
                        },
                        icon: icontext[2].icon),
                    Text(
                      "${icontext[2].text}",
                      style: TextStyle(color: stories.textStories),
                    ),
                  ],
                ),
              ),
            ),
                      

          ],
        ),
      ),
    );
  }
}
