import 'package:flutter/material.dart';
import 'package:messenger_clone/view/widget/custom_container_group.dart';
import 'package:messenger_clone/view/widget/defualt_text.dart';

class ChatRoomGroup extends StatelessWidget {
  const ChatRoomGroup({
    required this.imageLeft,
    required this.imageLight, 
    
    Key? key,
  }) : super(key: key);

  final String imageLight;
  final String imageLeft;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3.5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Row(
        children: [
          CustomContainerGroup(
              imageLight: imageLight , imageleft: imageLeft),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DefualtText(
                text: "Name Group",
                fontSize: 25,
              ),
              SizedBox(height: 5),
              Row(
                children: [
                  DefualtText(text: "UserName :"),
                  SizedBox(width: 10),
                  DefualtText(text: "Text For You Group"),
                  SizedBox(width: 10),
                  DefualtText(text: "01:10PM"),
                ],
              ),
              // Text("Name Group"),
              SizedBox(height: 10),
            ],
          )
        ],
      ),
    );
  }
}
