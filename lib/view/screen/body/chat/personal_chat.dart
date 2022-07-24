import 'package:flutter/material.dart';
import 'package:messenger_clone/data/dataSource/static/chat_app.dart';
import 'package:messenger_clone/view/widget/defualt_text.dart';

class PersonalChat extends StatelessWidget {
 PersonalChat({
  required this.index,
    Key? key,
  }) : super(key: key);
  final int index;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3.5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Container(
        height: 100,
        width: double.infinity,
        child: Container(
          height: 100,
          width: 95,
          child: Row(
            children: [
              SizedBox(
                width: 10,
              ),
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(color: index.isEven ? Colors.teal : Colors.pink, width: 3),
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("${message[index].image}"))),
              ),
              SizedBox(
                width: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 25,
                  ),
                  DefualtText(
                    text: "${message[index].Name}",
                    fontSize: 25,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      DefualtText(text: "${message[index].Name} :"),
                      SizedBox(
                        width: 10,
                      ),
                      DefualtText(text: "${message[index].text}"),
                      SizedBox(
                        width: 10,
                      ),
                      DefualtText(text: "${message[index].time}"),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
