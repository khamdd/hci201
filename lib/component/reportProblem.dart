import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ReportProblem extends StatefulWidget {
  const ReportProblem({Key? key}) : super(key: key);

  @override
  State<ReportProblem> createState() => _ReportProblemState();
}

class _ReportProblemState extends State<ReportProblem> {
  String dropdownvalue = 'Chọn ...';
  bool _displayElseField = false;

  // List of items in our dropdown menu
  var items = [
    'Chọn ...',
    'Bể bánh xe',
    'Hết xăng',
    'Hết tiền',
    'Kẹt xe',
    'Đường xấu',
    'Tai nạn',
    'Khác',
  ];

  void _showToast(BuildContext context) {
    final scaffold = ScaffoldMessenger.of(context);
    scaffold.showSnackBar(
      const SnackBar(
        content: Text('Gửi yêu cầu thành công'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(builder: (BuildContext context) {
          return IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
            tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
          );
        }),
        title: const Text("Báo cáo sự cố"),
      ),
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Sự cố gặp phải: ",
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
                DropdownButton(
                  value: dropdownvalue,
                  icon: const Icon(Icons.keyboard_arrow_down),
                  items: items.map((String items) {
                    return DropdownMenuItem(
                      value: items,
                      child: Text(items),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownvalue = newValue!;
                      // if (newValue == "Khác") {
                      //   _displayElseField = true;
                      // } else {
                      //   _displayElseField = false;
                      // }
                    });
                  },
                ),
              ],
            ),
            const SizedBox(
              height: 12.0,
            ),
            // Container(
            //     child: _displayElseField
            //         ? Column(
            //             children: [
            //               Row(
            //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //                 children: const [
            //                   Text(
            //                     "Sự cố:",
            //                     style: TextStyle(
            //                         fontSize: 20.0,
            //                         fontWeight: FontWeight.bold),
            //                   ),
            //                   SizedBox(
            //                       height: 40,
            //                       width: 200,
            //                       child: TextField(
            //                         maxLines: 8,
            //                         decoration: InputDecoration(
            //                           filled: true,
            //                           labelText: 'Nhập sự cố...',
            //                         ),
            //                       )),
            //                 ],
            //               ),
            //               const SizedBox(
            //                 height: 12.0,
            //               ),
            //             ],
            //           )
            //         : null),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "Mô tả sự cố: ",
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                    height: 40,
                    width: 200,
                    child: TextField(
                      maxLines: 8,
                      decoration: InputDecoration(
                        filled: true,
                        labelText: 'Nhập mô tả...',
                      ),
                    )),
              ],
            ),
            const SizedBox(
              height: 12.0,
            ),
            ElevatedButton(
              onPressed: () {
                _showToast(context);
              },
              child: const Text("Gửi yêu cầu hỗ trợ"),
            ),
          ],
        ),
      ),
    );
  }
}
