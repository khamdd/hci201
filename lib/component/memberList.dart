import 'package:flutter/material.dart';

class MemberList extends StatelessWidget {
  const MemberList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Thành viên nhóm"),
      ),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          decoration: const BoxDecoration(color: Colors.blue),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 70.0,
                    child: Image.asset("assets/images/img_5.png"),
                  ),
                  const Text(
                    "Nguyễn Văn A",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 70.0,
                    child: Image.asset("assets/images/img_2.png"),
                  ),
                  const Text(
                    "Nguyễn Văn B",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 70.0,
                    child: Image.asset("assets/images/img_3.png"),
                  ),
                  const Text(
                    "Nguyễn Thị D",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 70.0,
                    child: Image.asset("assets/images/img_4.png"),
                  ),
                  const Text(
                    "Nguyễn Nguyễn",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
