import 'package:flutter/material.dart';
import 'package:hci201/component/tripCard.dart';
import 'package:hci201/model/TripLists.dart';

class OnGoingTripPage extends StatelessWidget {
  const OnGoingTripPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: onGoingTripList.length,
      itemBuilder: (BuildContext context, int index) {
        return TripCard(
          destination: onGoingTripList[index].destination,
          time: onGoingTripList[index].time,
          date: onGoingTripList[index].date,
          month: onGoingTripList[index].month,
          year: onGoingTripList[index].year,
          dayOfWeek: onGoingTripList[index].dayOfWeek,
          group: onGoingTripList[index].group,
          periodTime: onGoingTripList[index].periodTime,
          picture: onGoingTripList[index].picture,
          tripName: onGoingTripList[index].tripName,
        );
      },
    );
  }
}
