import 'package:flutter/material.dart';
import 'package:hci201/pages/mainPage.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        color: Colors.white,
        child: Column(
          children: [
            SizedBox(
              child: Padding(
                padding: const EdgeInsets.only(top: 100.0),
                child: Image.asset("road.png"),
              ),
              height: 200.0,
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
            const SizedBox(
              height: 12.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                SizedBox(
                  child: Text('Or'),
                ),
              ],
            ),
            const SizedBox(
              height: 12.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 160.0,
                  child: Column(
                    children: [
                      const Icon(
                        Icons.facebook,
                        color: Colors.blueAccent,
                        size: 34,
                      ),
                      TextButton(
                        child: const Text(
                          "Đăng Ký",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 160.0,
                  child: Column(
                    children: [
                      const Icon(
                        Icons.email,
                        color: Colors.deepOrangeAccent,
                        size: 34,
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
                )
              ],
            ),
          ],
        ),
      )),
    );
  }
}
