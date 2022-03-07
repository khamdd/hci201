import 'package:flutter/material.dart';

import '../component/conversationList.dart';
import '../model/chatUsersModel.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  List<ChatUsers> chatUsers = [
    ChatUsers("Team7777", "Đã đủ thành viên", "assets/images/img.png", "Now"),
    ChatUsers(
        "DL2021", "Chuyến đi cuối năm", "assets/images/img_1.png", "Yesterday"),
    ChatUsers(
        "Xuyen Viet 22", "Vịnh Hạ Long", "assets/images/img_2.png", "31 Mar"),
    ChatUsers("Vung Tau 24h", "Hồ Cốc............", "assets/images/img_3.png",
        "28 Mar"),
    ChatUsers("Tiền Trạm", "Rừng rừng...............",
        "assets/images/img_4.png", "23 Mar"),
    ChatUsers("Nha Trang - Sai Gon", "tour bạo lưc", "assets/images/img_5.png",
        "17 Mar"),
    ChatUsers(
        "Tây Bắc", "dậy sớm săn mây", "assets/images/img_6.png", "24 Feb"),
    ChatUsers(
        "CG 24h", "chuyến đi sau dịch ", "assets/images/img_7.png", "18 Feb"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.only(left: 16, right: 16, top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
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
                  contentPadding: const EdgeInsets.all(8),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Colors.grey.shade100)),
                ),
              ),
            ),
            ListView.builder(
              itemCount: chatUsers.length,
              shrinkWrap: true,
              padding: const EdgeInsets.only(top: 16),
              physics: const NeverScrollableScrollPhysics(),
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
