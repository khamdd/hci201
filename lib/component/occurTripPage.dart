import 'package:flutter/material.dart';
import 'package:hci201/component/createTrip.dart';

class OccurTripPage extends StatelessWidget {
  const OccurTripPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          'road.png',
          height: 300,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 24),
          child: Text("Bạn chưa tạo hành trình nào"),
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const CreateTrip()));
          },
          child: const Text("Tạo hành trình"),
        )
      ],
    );
  }
}
