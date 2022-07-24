import 'package:flutter/material.dart';
import 'package:messenger_clone/view/screen/body/Story/custom_story.dart';
import 'package:messenger_clone/view/screen/body/chat/chat_room_group.dart';
import 'package:messenger_clone/view/screen/body/chat/personal_chat.dart';
import 'package:messenger_clone/view/widget/custom_search_bar.dart';

class BodyChat extends StatelessWidget {
  const BodyChat({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(scrollDirection: Axis.vertical, children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CustomSearchBar(),
            CustomStory(),
            ChatRoomGroup(
              imageLeft: "ManOne.jpg",
              imageLight: "WomanOne.jpg",
            ),
            PersonalChat(index: 0,),
            ChatRoomGroup(
              imageLeft: "ManTwo.jpg",
              imageLight: "WomanTwo.jpg",
            ),
            PersonalChat(index: 1,),
            PersonalChat(index: 2,),
            ChatRoomGroup(
              imageLeft: "ManThree.jpg",
              imageLight: "WomanThree.jpg",
            ),
            PersonalChat(index: 3,),
            PersonalChat(index: 4,),
            PersonalChat(index: 5,),
            ChatRoomGroup(
              imageLeft: "ManFour.jpg",
              imageLight: "WomanFour.jpg",
            ),
            PersonalChat(index: 6,),
            PersonalChat(index: 7,),
            PersonalChat(index: 8,),
                 ChatRoomGroup(
              imageLeft: "ManFive.jpg",
              imageLight: "WomanFive.jpg",
            ),
            PersonalChat(index: 9,),
            PersonalChat(index: 10,),
            PersonalChat(index: 11,),
                 ChatRoomGroup(
              imageLeft: "Mansix.jpg",
              imageLight: "WomanSix.jpg",
            ),
          ],
        ),
      ]),
    );
  }
}

