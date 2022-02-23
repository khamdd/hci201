import 'package:flutter/material.dart';
import 'package:hci201/component/createTrip.dart';

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
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                "Vịnh Hạ Long",
                style: TextStyle(fontSize: 16.0),
              ),
              Text(
                "Ngày 1/1/2023",
                style: TextStyle(fontSize: 16.0),
              ),
            ],
          ),
        ),
        const Divider(
          height: 1.0,
          color: Colors.black,
        ),
        Expanded(
          flex: 5,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text(
                  "Lộ trình",
                  style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
                ),
                Row(
                  children: const [
                    Icon(Icons.location_on),
                    Text(
                      "Vị trí xuất phát",
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: const [
                    Icon(Icons.flag),
                    Text(
                      "Trạm 1",
                      style: TextStyle(fontSize: 16.0),
                    ),
                  ],
                ),
                Row(
                  children: const [
                    Icon(Icons.flag),
                    Text(
                      "Trạm 2",
                      style: TextStyle(fontSize: 16.0),
                    ),
                  ],
                ),
                Row(
                  children: const [
                    Icon(Icons.flag),
                    Text(
                      "Trạm 3",
                      style: TextStyle(fontSize: 16.0),
                    ),
                  ],
                ),
                Row(
                  children: const [
                    Icon(Icons.flag),
                    Text(
                      "Trạm 4",
                      style: TextStyle(fontSize: 16.0),
                    ),
                  ],
                ),
                Row(
                  children: const [
                    Icon(Icons.location_on),
                    Text(
                      "Điểm đến",
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        const Divider(
          height: 2.0,
          color: Colors.black,
        ),
        Expanded(
          flex: 2,
          child: GridView.count(
            childAspectRatio: 4,
            primary: false,
            padding: const EdgeInsets.all(8),
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            crossAxisCount: 2,
            children: const <Widget>[
              CustomeGridButton(
                  color: Colors.blue,
                  label: "Xem thành viên",
                  icon: Icons.group),
              CustomeGridButton(
                  color: Colors.blue, label: "Xem bản đồ", icon: Icons.map),
              CustomeGridButton(
                  color: Colors.blue,
                  label: "Báo cáo sự cố",
                  icon: Icons.warning),
              CustomeGridButton(
                  color: Colors.red,
                  label: "Kết thúc chuyến đi",
                  icon: Icons.exit_to_app),
            ],
          ),
        )
      ],
    );
  }
}

class CustomeGridButton extends StatelessWidget {
  const CustomeGridButton(
      {Key? key, required this.color, required this.label, required this.icon})
      : super(key: key);
  final Color color;
  final String label;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: InkWell(
        onTap: () {
          debugPrint("alo alo");
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
