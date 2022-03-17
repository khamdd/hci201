import 'package:flutter/material.dart';
import 'package:hci201/component/createTrip.dart';
import 'package:hci201/component/occurringTripLocationList.dart';
import 'package:hci201/component/tripDetail.dart';

class OccurTripPage extends StatefulWidget {
  const OccurTripPage({Key? key}) : super(key: key);

  @override
  _OccurTripPageState createState() => _OccurTripPageState();
}

class _OccurTripPageState extends State<OccurTripPage> {
  bool hasOccurTrip = true;

  @override
  Widget build(BuildContext context) {
    return Container(child: hasOccurTrip ? const HasTrip() : const NoTrip());
  }
}

class NoTrip extends StatelessWidget {
  const NoTrip({Key? key}) : super(key: key);

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

class HasTrip extends StatelessWidget {
  const HasTrip({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TripDetail(
      destination: occurringTripList[0].destination,
      time: occurringTripList[0].time,
      date: occurringTripList[0].date,
      month: occurringTripList[0].month,
      dayOfWeek: occurringTripList[0].dayOfWeek,
      address: occurringTripList[0].address,
      picture: occurringTripList[0].picture,
    );
  }
}

class CustomeGridButton extends StatelessWidget {
  const CustomeGridButton(
      {Key? key,
      required this.color,
      required this.label,
      required this.icon,
      required this.action})
      : super(key: key);
  final Color color;
  final String label;
  final IconData icon;
  final Function action;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: GestureDetector(
        onTap: () {
          action();
        },
        child: Container(
          decoration: BoxDecoration(
              color: color,
              border: Border.all(
                width: 2,
                color: color,
              ),
              borderRadius: const BorderRadius.all(Radius.circular(12))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(icon),
              Text(label),
            ],
          ),
        ),
      ),
    );
  }
}
