import 'package:flutter/material.dart';
import 'package:hci201/component/addLocation.dart';
import 'package:hci201/component/memberList.dart';
import 'package:hci201/component/occuringTripCart.dart';
import 'package:hci201/component/occurringTripLocationList.dart';

class AllTripDetail extends StatelessWidget {
  final String destination, date, month, dayOfWeek, time, address;

  const AllTripDetail({
    Key? key,
    required this.destination,
    required this.date,
    required this.month,
    required this.dayOfWeek,
    required this.time,
    required this.address,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Chi tiết chuyến đi",
        ),
      ),
      body: SafeArea(
        child: ListView(
          shrinkWrap: true,
          children: [
            Container(
              height: 60.0,
              padding:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 8.0),
              child: const Text(
                "Xuyên Việt",
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(color: Colors.blue[100]),
              padding:
                  const EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
              child: Row(
                children: [
                  Text(
                    "Ngày 1 (" + dayOfWeek + ", " + date + "/" + month + ")",
                    style: const TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text(
                      "3 địa điểm",
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const AddLocation();
                      }));
                    },
                    icon: const Icon(Icons.add_circle_outline_rounded),
                    color: Colors.blue,
                    iconSize: 32.0,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 300.0,
              child: ListView.builder(
                itemCount: occurringTripList.length,
                itemBuilder: (BuildContext context, int index) {
                  return OccuringTripCard(
                    destination: occurringTripList[index].destination,
                    time: occurringTripList[index].time,
                    date: occurringTripList[index].date,
                    dayOfWeek: occurringTripList[index].dayOfWeek,
                    address: occurringTripList[index].address,
                    picture: occurringTripList[index].picture,
                  );
                },
              ),
            ),
            Container(
              decoration: BoxDecoration(color: Colors.blue[100]),
              padding:
                  const EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
              child: Row(
                children: [
                  const Text(
                    "Ngày 2 (Thứ 5, 13/4)",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text(
                      "3 địa điểm",
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const AddLocation();
                      }));
                    },
                    icon: const Icon(Icons.add_circle_outline_rounded),
                    color: Colors.blue,
                    iconSize: 32.0,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 300.0,
              child: ListView.builder(
                itemCount: occurringTripList.length,
                itemBuilder: (BuildContext context, int index) {
                  return OccuringTripCard(
                    destination: occurringTripList[index].destination,
                    time: occurringTripList[index].time,
                    date: occurringTripList[index].date,
                    dayOfWeek: occurringTripList[index].dayOfWeek,
                    address: occurringTripList[index].address,
                    picture: occurringTripList[index].picture,
                  );
                },
              ),
            ),
            Container(
              decoration: BoxDecoration(color: Colors.blue[100]),
              padding:
                  const EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
              child: Row(
                children: [
                  const Text(
                    "Ngày 3 (Thứ 6, 14/4)",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text(
                      "3 địa điểm",
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const AddLocation();
                      }));
                    },
                    icon: const Icon(Icons.add_circle_outline_rounded),
                    color: Colors.blue,
                    iconSize: 32.0,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 300.0,
              child: ListView.builder(
                itemCount: occurringTripList.length,
                itemBuilder: (BuildContext context, int index) {
                  return OccuringTripCard(
                    destination: occurringTripList[index].destination,
                    time: occurringTripList[index].time,
                    date: occurringTripList[index].date,
                    dayOfWeek: occurringTripList[index].dayOfWeek,
                    address: occurringTripList[index].address,
                    picture: occurringTripList[index].picture,
                  );
                },
              ),
            ),
            const SizedBox(
              height: 24.0,
            )
            // Center(
            //   child: OutlinedButton(
            //     onPressed: () {
            //       Navigator.push(context, MaterialPageRoute(builder: (context) {
            //         return const MemberList();
            //       }));
            //     },
            //     style: ButtonStyle(
            //       side: MaterialStateProperty.all(const BorderSide(
            //           color: Colors.blue,
            //           width: 1.0,
            //           style: BorderStyle.solid)),
            //       shape: MaterialStateProperty.all(
            //         RoundedRectangleBorder(
            //           borderRadius: BorderRadius.circular(30.0),
            //         ),
            //       ),
            //     ),
            //     child: const SizedBox(
            //       child: Center(child: Text("Thành viên")),
            //       width: 200.0,
            //       height: 50.0,
            //     ),
            //   ),
            // ),
            // const SizedBox(
            //   height: 20.0,
            // )
          ],
        ),
      ),
      bottomSheet: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: ElevatedButton(
          child: const Text('Thành viên'),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return const MemberList();
            }));
          },
        ),
      ),
    );
  }
}
