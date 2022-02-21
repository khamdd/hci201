import 'package:flutter/material.dart';

import '../component/conversationList.dart';
import '../model/chatUsersModel.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  _ChatPageState createState() => _ChatPageState();

}

class _ChatPageState extends State<ChatPage> {
  List<ChatUsers> chatUsers = [
    ChatUsers("Jane Russel", "Awesome Setup", "assets/images/img.png", "Now"),
    ChatUsers("Glady's Murphy", "That's Great", "assets/images/img_1.png",
        "Yesterday"),
    ChatUsers("Jorge Henry", "Hey where are you?", "assets/images/img_2.png",
        "31 Mar"),
    ChatUsers("Philip Fox", "Busy! Call me in 20 mins",
        "assets/images/img_3.png", "28 Mar"),
    ChatUsers("Debra Hawkins", "Thankyou, It's awesome",
        "assets/images/img_4.png", "23 Mar"),
    ChatUsers("Jacob Pena", "will update you in evening",
        "assets/images/img_5.png", "17 Mar"),
    ChatUsers("Andrey Jones", "Can you please share the file?",
        "assets/images/img_6.png", "24 Feb"),
    ChatUsers("John Wick", "How are you?", "assets/images/img_7.png", "18 Feb"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SafeArea(
              child: Padding(
                padding: EdgeInsets.only(left: 16, right: 16, top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 16, left: 16, right: 16),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Search...",
                  hintStyle: TextStyle(color: Colors.grey.shade600),
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.grey.shade600,
                    size: 20,
                  ),
                  filled: true,
                  fillColor: Colors.grey.shade100,
                  contentPadding: EdgeInsets.all(8),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Colors.grey.shade100)),
                ),
              ),
            ),
            ListView.builder(
              itemCount: chatUsers.length,
              shrinkWrap: true,
              padding: EdgeInsets.only(top: 16),
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return ConversationList(
                  chatUsers[index].name,
                  chatUsers[index].messageText,
                  chatUsers[index].imageURL,
                  chatUsers[index].time,
                  (index == 0 || index == 3) ? true : false,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}