import 'package:flutter/material.dart';
import 'package:hci201/pages/mainPage.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        color: Colors.white,
        child: Column(
          children: [
            const SizedBox(
              height: 80.0,
            ),
            Container(), //put image here
            const Text(
              "Đăng Nhập",
              style: TextStyle(
                color: Colors.blue,
                fontSize: 32,
              ),
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
              height: 20.0,
            ),
            ElevatedButton(
              child: const Text(
                "Đăng Nhập",
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const MainPage()));
              },


            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                 SizedBox(
                   child: Text(
                   'or'

                ),
                 ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const<Widget> [
                Icon(
                  Icons.facebook,
                  color: Colors.blueAccent,
                  size: 34,
                ),
                Icon(
                  Icons.email,
                  color: Colors.deepOrangeAccent,
                  size: 34,
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextButton(
                  child: const Text("Đăng Ký"),
                  onPressed: () {},
                ),
                TextButton(
                  child: const Text("Quên mật khẩu?"),
                  onPressed: () {},
                )
              ],
            )
          ],
        ),
      )),
    );
  }
}
