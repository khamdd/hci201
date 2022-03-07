import 'package:flutter/material.dart';
import 'package:hci201/pages/mainPage.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
          child: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/loginBackground2.png"),
                fit: BoxFit.cover)),
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.transparent),
                  borderRadius: const BorderRadius.all(Radius.circular(30.0)),
                  color: const Color.fromARGB(125, 255, 255, 255)),
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.center,
                    height: 180.0,
                    child: const Text("OurTrip",
                        style: TextStyle(
                          fontSize: 44.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                          fontStyle: FontStyle.italic,
                          letterSpacing: 4.0,
                        )),
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      icon: Icon(Icons.local_phone_rounded),
                      hintText: 'Nhập số điện thoại',
                      labelText: 'Số điện thoại',
                    ),
                    onSaved: (String? value) {},
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      icon: Icon(Icons.lock),
                      hintText: 'Nhập mật khẩu',
                      labelText: 'Mật khẩu',
                    ),
                    onSaved: (String? value) {},
                  ),
                  const SizedBox(
                    height: 8.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(
                          child: const Text(
                            "Đăng Ký",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          onPressed: () {},
                        ),
                        TextButton(
                          child: const Text(
                            "Quên mật khẩu?",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                  ElevatedButton(
                    child: const Text(
                      "Đăng Nhập",
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const MainPage()));
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
