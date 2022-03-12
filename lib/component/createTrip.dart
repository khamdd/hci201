import 'package:flutter/material.dart';
import 'package:hci201/component/memberList.dart';
import 'package:intl/intl.dart';

class CreateTrip extends StatefulWidget {
  const CreateTrip({Key? key}) : super(key: key);

  @override
  State<CreateTrip> createState() => _CreateTripState();
}

class _CreateTripState extends State<CreateTrip> {
  DateTime initialDate = DateTime.now();
  DateTime? datePicked;
  String? formattedDate;
  TimeOfDay initialTime = const TimeOfDay(hour: 9, minute: 0);
  TimeOfDay? pickedTime;
  String? formattedTime;

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
        title: const Text("Tạo chuyến đi"),
      ),
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "Xuất phát: ",
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                    height: 40,
                    width: 200,
                    child: TextField(
                      decoration: InputDecoration(
                        filled: true,
                        labelText: 'Nhập địa điểm...',
                      ),
                    )),
              ],
            ),
            const SizedBox(
              height: 12.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "Điểm đến:",
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                    height: 40,
                    width: 200,
                    child: TextField(
                      decoration: InputDecoration(
                        filled: true,
                        labelText: 'Nhập điểm đến...',
                      ),
                    )),
              ],
            ),
            const SizedBox(
              height: 12.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Ngày xuất phát:",
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                    width: 200,
                    child: ElevatedButton(
                      onPressed: () {
                        FocusScope.of(context).requestFocus(FocusNode());
                        showDatePicker(
                          context: context,
                          initialDate: datePicked ?? initialDate,
                          firstDate: DateTime(2000),
                          lastDate: DateTime(2100),
                        ).then((date) {
                          setState(() {
                            if (date != null) {
                              initialDate = date;
                              datePicked = date;
                            }
                            formattedDate = DateFormat('yyyy-MM-dd')
                                .format(datePicked ?? initialDate);
                          });
                        });
                      },
                      child: Text(formattedDate ?? "Chọn ngày xuất phát"),
                    )),
              ],
            ),
            const SizedBox(
              height: 12.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Ngày kết thúc:",
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                    width: 200,
                    child: ElevatedButton(
                      onPressed: () {
                        FocusScope.of(context).requestFocus(FocusNode());
                        showDatePicker(
                          context: context,
                          initialDate: datePicked ?? initialDate,
                          firstDate: DateTime(2000),
                          lastDate: DateTime(2100),
                        ).then((date) {
                          setState(() {
                            if (date != null) {
                              initialDate = date;
                              datePicked = date;
                            }
                            formattedDate = DateFormat('yyyy-MM-dd')
                                .format(datePicked ?? initialDate);
                          });
                        });
                      },
                      child: Text(formattedDate ?? "Chọn ngày kết thúc"),
                    )),
              ],
            ),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //   children: [
            //     const Text(
            //       "Thời gian:",
            //       style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            //     ),
            //     SizedBox(
            //       width: 200,
            //       child: ElevatedButton(
            //         onPressed: () {
            //           showTimePicker(
            //             context: context,
            //             initialTime: pickedTime ?? initialTime,
            //           ).then((time) {
            //             setState(() {
            //               if (time != null) {
            //                 initialTime = time;
            //                 pickedTime = time;
            //               }
            //               formattedTime = pickedTime == null
            //                   ? initialTime.format(context)
            //                   : pickedTime!.format(context);
            //             });
            //           });
            //         },
            //         child: Text(formattedTime ?? "Chọn thời gian"),
            //       ),
            //     ),
            //   ],
            // ),
            const SizedBox(
              height: 12.0,
            ),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //   children: [
            //     const Text(
            //       "Thành viên:",
            //       style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            //     ),
            //     Container(
            //       height: 40.0,
            //       width: 200,
            //       decoration: const BoxDecoration(
            //           color: Colors.blue,
            //           borderRadius: BorderRadius.all(Radius.circular(5.0))),
            //       child: Center(
            //         child: InkWell(
            //           child: const Text(
            //             "Thành viên",
            //             style: TextStyle(
            //                 color: Colors.white, fontWeight: FontWeight.bold),
            //           ),
            //           onTap: () {
            //             Navigator.push(context,
            //                 MaterialPageRoute(builder: (context) {
            //               return const MemberList();
            //             }));
            //           },
            //         ),
            //       ),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.end,
            //   children: [
            //     const Text(
            //       "Thành viên",
            //       style: TextStyle(
            //           color: Colors.white, fontWeight: FontWeight.bold),
            //     ),
            //     IconButton(
            //       onPressed: () {
            // Navigator.push(context,
            //     MaterialPageRoute(builder: (context) {
            //   return const MemberList();
            // }));
            //       },
            //       icon: const Icon(Icons.add),
            //       color: Colors.white,
            //     )
            //   ],
            // ),
            //     )
            //   ],
            // ),
            // const SizedBox(
            //   height: 12.0,
            // ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "Tên nhóm:",
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                    height: 40,
                    width: 200,
                    child: TextField(
                      decoration: InputDecoration(
                        filled: true,
                        labelText: 'Nhập tên nhóm...',
                      ),
                    )),
              ],
            ),
            const SizedBox(
              height: 12.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "Mô tả chuyến đi:",
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                    height: 40,
                    width: 200,
                    child: TextField(
                      decoration: InputDecoration(
                        filled: true,
                        labelText: 'Nhập mô tả...',
                      ),
                    )),
              ],
            ),
            const SizedBox(
              height: 44.0,
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text("Tạo"),
            ),
          ],
        ),
      ),
    );
  }

  final TextEditingController _textFieldController = TextEditingController();

  Future<void> _displayTextInputDialog(BuildContext context) async {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text('Thêm thành viên'),
            content: TextField(
              onChanged: (value) {
                setState(() {
                  valueText = value;
                });
              },
              controller: _textFieldController,
              decoration:
                  const InputDecoration(hintText: "Nhập số điện thoại.."),
            ),
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
}
