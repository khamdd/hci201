import 'package:flutter/material.dart';

class EditingOccurringTripCard extends StatefulWidget {
  final String destination, date, dayOfWeek, address, time, picture;

  const EditingOccurringTripCard({
    Key? key,
    required this.destination,
    required this.date,
    required this.dayOfWeek,
    required this.time,
    required this.address,
    required this.picture,
  }) : super(key: key);

  @override
  State<EditingOccurringTripCard> createState() =>
      _EditingOccurringTripCardState();
}

class _EditingOccurringTripCardState extends State<EditingOccurringTripCard> {
  Future<void> _displayTextInputDialog(BuildContext context) async {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text("Bạn có chắc muốn xóa địa điểm này?"),
            actions: <Widget>[
              FlatButton(
                color: Colors.red,
                textColor: Colors.white,
                child: const Text('CANCEL'),
                onPressed: () {
                  setState(() {
                    Navigator.pop(context);
                  });
                },
              ),
              FlatButton(
                color: Colors.green,
                textColor: Colors.white,
                child: const Text('OK'),
                onPressed: () {
                  setState(() {
                    codeDialog = valueText;
                    Navigator.pop(context);
                  });
                },
              ),
            ],
          );
        });
  }

  String? codeDialog;
  String? valueText;

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
            width: 290,
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
          SizedBox(
            width: 20.0,
            child: IconButton(
              onPressed: () {
                _displayTextInputDialog(context);
              },
              icon: const Icon(Icons.cancel),
              color: Colors.red[700],
            ),
          ),
        ],
      ),
    );
  }
}
