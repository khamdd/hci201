import 'package:flutter/material.dart';

class OccuringTripCard extends StatefulWidget {
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
  State<OccuringTripCard> createState() => _OccuringTripCardState();
}

class _OccuringTripCardState extends State<OccuringTripCard> {
  double contWidth = 340.0;
  bool isEditing = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          SizedBox(
              width: 52.0,
              child: Text(widget.time, style: const TextStyle(fontSize: 16.0))),
          Container(
            width: contWidth,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.blueAccent),
                borderRadius: BorderRadius.circular(8.0)),
            child: Row(
              children: [
                Image.asset(
                  widget.picture,
                  fit: BoxFit.cover,
                  width: 80,
                  height: 80,
                ),
                const SizedBox(
                  width: 8.0,
                ),
                SizedBox(
                  width: 200,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.destination,
                        style: const TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        widget.address,
                        style: const TextStyle(color: Colors.black54),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
