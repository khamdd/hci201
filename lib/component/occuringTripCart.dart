import 'package:flutter/material.dart';

class OccuringTripCard extends StatelessWidget {
  final String destination, date, dayOfWeek, address, time, picture;

  const OccuringTripCard({
    Key? key,
    required this.destination,
    required this.date,
    required this.dayOfWeek,
    required this.time,
    required this.address,
    required this.picture,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(time, style: const TextStyle(fontSize: 16.0)),
          Container(
            width: 340.0,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.blueAccent),
                borderRadius: BorderRadius.circular(8.0)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  picture,
                  fit: BoxFit.cover,
                  width: 80,
                  height: 80,
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
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
