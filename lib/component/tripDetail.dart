import 'package:flutter/material.dart';
import 'package:hci201/component/allTripDetail.dart';
import 'package:hci201/component/occuringTripCart.dart';
import 'package:hci201/component/occurringTripLocationList.dart';

class TripDetail extends StatelessWidget {
  final String destination, date, month, dayOfWeek, time, address;

  const TripDetail({
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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 8.0),
          child: Text(
            "Xuyên Việt",
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 8.0),
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
            ],
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: occurringTripList.length,
            itemBuilder: (BuildContext context, int index) {
              return OccuringTripCard(
                destination: occurringTripList[index].destination,
                time: occurringTripList[index].time,
                date: occurringTripList[index].date,
                dayOfWeek: occurringTripList[index].dayOfWeek,
                address: occurringTripList[index].address,
              );
            },
          ),
        ),
        Center(
          child: OutlinedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return AllTripDetail(
                    destination: destination,
                    date: date,
                    month: month,
                    dayOfWeek: dayOfWeek,
                    time: time,
                    address: address);
              }));
            },
            style: ButtonStyle(
              side: MaterialStateProperty.all(const BorderSide(
                  color: Colors.blue, width: 1.0, style: BorderStyle.solid)),
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
            ),
            child: const SizedBox(
              child: Center(child: Text("Xem chi tiết")),
              width: 200.0,
              height: 50.0,
            ),
          ),
        ),
        const SizedBox(
          height: 20.0,
        )
      ],
    );
  }
}
