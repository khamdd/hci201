import 'package:flutter/material.dart';

class LocationCard extends StatelessWidget {
  final String destination, date, dayOfWeek, address, time;

  const LocationCard({
    Key? key,
    required this.destination,
    required this.date,
    required this.dayOfWeek,
    required this.time,
    required this.address,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(width: 1.0, color: Colors.blue),
            borderRadius: BorderRadius.circular(8.0)),
        child: Row(
          children: [
            Image.asset(
              "assets/images/phongnha.jpg",
              fit: BoxFit.cover,
              width: 80,
              height: 80,
            ),
            const SizedBox(
              width: 8.0,
            ),
            SizedBox(
              width: 250,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    destination,
                    style: const TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    address,
                    style: const TextStyle(color: Colors.black54),
                  ),
                ],
              ),
            ),
            IconButton(
                onPressed: () {
                  showGeneralDialog(
                    barrierLabel: "Label",
                    barrierDismissible: true,
                    barrierColor: Colors.black.withOpacity(0.5),
                    transitionDuration: const Duration(milliseconds: 400),
                    context: context,
                    pageBuilder: (context, anim1, anim2) {
                      return Align(
                        alignment: Alignment.bottomCenter,
                        child: SizedBox(
                          child: Scaffold(
                              appBar: AppBar(
                                title: const Text("Thêm địa điểm"),
                                actions: [
                                  FlatButton(
                                    textColor: Colors.white,
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: const Text("Xong",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        )),
                                  ),
                                ],
                              ),
                              body: Column(
                                children: [
                                  const SizedBox(
                                    child: Center(
                                        child: Text(
                                            "Thêm cho Ngày 1 - Thứ 4 ngày 12 tháng 4",
                                            style: TextStyle(
                                                fontSize: 16.0,
                                                fontWeight: FontWeight.bold))),
                                    height: 48.0,
                                  ),
                                  Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 16.0),
                                    child: Container(
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              width: 1.0, color: Colors.blue),
                                          borderRadius:
                                              BorderRadius.circular(4.0)),
                                      child: Row(
                                        children: [
                                          Image.asset(
                                            "assets/images/phongnha.jpg",
                                            fit: BoxFit.cover,
                                            width: 80,
                                            height: 80,
                                          ),
                                          const SizedBox(
                                            width: 24.0,
                                          ),
                                          SizedBox(
                                            width: 250,
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  destination,
                                                  style: const TextStyle(
                                                    fontSize: 16.0,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                                Text(
                                                  address,
                                                  style: const TextStyle(
                                                      color: Colors.black54),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 24.0,
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            width: 1.0, color: Colors.blue),
                                        borderRadius:
                                            BorderRadius.circular(4.0)),
                                    child: SizedBox(
                                      height: 40.0,
                                      child: ListView(
                                        scrollDirection: Axis.horizontal,
                                        children: const [
                                          SizedBox(
                                            width: 80.0,
                                            child: Center(child: Text("00:00")),
                                          ),
                                          SizedBox(
                                            width: 80.0,
                                            child: Center(child: Text("00:30")),
                                          ),
                                          SizedBox(
                                            width: 80.0,
                                            child: Center(child: Text("01:00")),
                                          ),
                                          SizedBox(
                                            width: 80.0,
                                            child: Center(child: Text("01:30")),
                                          ),
                                          SizedBox(
                                            width: 80.0,
                                            child: Center(child: Text("02:00")),
                                          ),
                                          SizedBox(
                                            width: 80.0,
                                            child: Center(child: Text("02:30")),
                                          ),
                                          SizedBox(
                                            width: 80.0,
                                            child: Center(child: Text("03:00")),
                                          ),
                                          SizedBox(
                                            width: 80.0,
                                            child: Center(child: Text("03:30")),
                                          ),
                                          SizedBox(
                                            width: 80.0,
                                            child: Center(child: Text("04:00")),
                                          ),
                                          SizedBox(
                                            width: 80.0,
                                            child: Center(child: Text("04:30")),
                                          ),
                                          SizedBox(
                                            width: 80.0,
                                            child: Center(child: Text("05:00")),
                                          ),
                                          SizedBox(
                                            width: 80.0,
                                            child: Center(child: Text("05:30")),
                                          ),
                                          SizedBox(
                                            width: 80.0,
                                            child: Center(child: Text("06:00")),
                                          ),
                                          SizedBox(
                                            width: 80.0,
                                            child: Center(child: Text("06:30")),
                                          ),
                                          SizedBox(
                                            width: 80.0,
                                            child: Center(child: Text("07:00")),
                                          ),
                                          SizedBox(
                                            width: 80.0,
                                            child: Center(child: Text("07:30")),
                                          ),
                                          SizedBox(
                                            width: 80.0,
                                            child: Center(child: Text("08:00")),
                                          ),
                                          SizedBox(
                                            width: 80.0,
                                            child: Center(child: Text("08:30")),
                                          ),
                                          SizedBox(
                                            width: 80.0,
                                            child: Center(child: Text("09:00")),
                                          ),
                                          SizedBox(
                                            width: 80.0,
                                            child: Center(child: Text("09:30")),
                                          ),
                                          SizedBox(
                                            width: 80.0,
                                            child: Center(child: Text("10:00")),
                                          ),
                                          SizedBox(
                                            width: 80.0,
                                            child: Center(child: Text("10:30")),
                                          ),
                                          SizedBox(
                                            width: 80.0,
                                            child: Center(child: Text("11:00")),
                                          ),
                                          SizedBox(
                                            width: 80.0,
                                            child: Center(child: Text("11:30")),
                                          ),
                                          SizedBox(
                                            width: 80.0,
                                            child: Center(child: Text("12:00")),
                                          ),
                                          SizedBox(
                                            width: 80.0,
                                            child: Center(child: Text("12:30")),
                                          ),
                                          SizedBox(
                                            width: 80.0,
                                            child: Center(child: Text("13:00")),
                                          ),
                                          SizedBox(
                                            width: 80.0,
                                            child: Center(child: Text("13:30")),
                                          ),
                                          SizedBox(
                                            width: 80.0,
                                            child: Center(child: Text("14:00")),
                                          ),
                                          SizedBox(
                                            width: 80.0,
                                            child: Center(child: Text("14:30")),
                                          ),
                                          SizedBox(
                                            width: 80.0,
                                            child: Center(child: Text("15:00")),
                                          ),
                                          SizedBox(
                                            width: 80.0,
                                            child: Center(child: Text("15:30")),
                                          ),
                                          SizedBox(
                                            width: 80.0,
                                            child: Center(child: Text("16:00")),
                                          ),
                                          SizedBox(
                                            width: 80.0,
                                            child: Center(child: Text("16:30")),
                                          ),
                                          SizedBox(
                                            width: 80.0,
                                            child: Center(child: Text("17:00")),
                                          ),
                                          SizedBox(
                                            width: 80.0,
                                            child: Center(child: Text("17:30")),
                                          ),
                                          SizedBox(
                                            width: 80.0,
                                            child: Center(child: Text("18:00")),
                                          ),
                                          SizedBox(
                                            width: 80.0,
                                            child: Center(child: Text("18:30")),
                                          ),
                                          SizedBox(
                                            width: 80.0,
                                            child: Center(child: Text("19:00")),
                                          ),
                                          SizedBox(
                                            width: 80.0,
                                            child: Center(child: Text("19:30")),
                                          ),
                                          SizedBox(
                                            width: 80.0,
                                            child: Center(child: Text("20:00")),
                                          ),
                                          SizedBox(
                                            width: 80.0,
                                            child: Center(child: Text("20:30")),
                                          ),
                                          SizedBox(
                                            width: 80.0,
                                            child: Center(child: Text("21:00")),
                                          ),
                                          SizedBox(
                                            width: 80.0,
                                            child: Center(child: Text("21:30")),
                                          ),
                                          SizedBox(
                                            width: 80.0,
                                            child: Center(child: Text("22:00")),
                                          ),
                                          SizedBox(
                                            width: 80.0,
                                            child: Center(child: Text("22:30")),
                                          ),
                                          SizedBox(
                                            width: 80.0,
                                            child: Center(child: Text("23:00")),
                                          ),
                                          SizedBox(
                                            width: 80.0,
                                            child: Center(child: Text("23:30")),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              )),
                          height: 600,
                        ),
                      );
                    },
                    transitionBuilder: (context, anim1, anim2, child) {
                      return SlideTransition(
                        position: Tween(begin: Offset(0, 1), end: Offset(0, 0))
                            .animate(anim1),
                        child: child,
                      );
                    },
                  );
                },
                icon: const Icon(Icons.add_circle_outline),
                color: Colors.blue)
          ],
        ),
      ),
    );
  }
}
