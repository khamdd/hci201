import 'package:flutter/material.dart';
import 'package:hci201/component/createTrip.dart';
import 'package:hci201/component/occurTripPage.dart';
import 'package:hci201/component/onGoingTripPage.dart';

class TripPage extends StatefulWidget {
  const TripPage({Key? key}) : super(key: key);

  @override
  State<TripPage> createState() => _TripPageState();
}

class _TripPageState extends State<TripPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            title: const Text("Chuyến đi"),
            actions: [
              // TextButton(
              //   style: TextButton.styleFrom(
              //       primary: Theme.of(context).colorScheme.onPrimary),
              //   onPressed: () {
              //     Navigator.push(
              //         context,
              //         MaterialPageRoute(
              //             builder: (context) => const CreateTrip()));
              //   },
              //   child: const Text(
              //     'Tạo chuyến đi',
              //     style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
              //   ),
              // ),
              IconButton(
                  color: Colors.white,
                  iconSize: 34,
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const CreateTrip()));
                  },
                  icon: const Icon(Icons.add))
            ],
            bottom: const TabBar(
              tabs: [
                Tab(child: Text("Đang diễn ra")),
                Tab(child: Text("Sắp tới")),
              ],
            ),
          ),
          body: const TabBarView(children: [
            OccurTripPage(),
            OnGoingTripPage(),
          ])),
    );
  }
}
