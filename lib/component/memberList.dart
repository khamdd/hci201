import 'package:flutter/material.dart';

class MemberList extends StatefulWidget {
  const MemberList({Key? key}) : super(key: key);

  @override
  State<MemberList> createState() => _MemberListState();
}

class _MemberListState extends State<MemberList> {
  final TextEditingController _textFieldController = TextEditingController();

  Future<void> _displayTextInputDialog(BuildContext context) async {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text("Bạn có chắc muốn xóa thành viên này?"),
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

  void _showToast(BuildContext context) {
    final scaffold = ScaffoldMessenger.of(context);
    scaffold.showSnackBar(
      SnackBar(
        content: const Text('Bạn đã copy đường dẫn thêm thành viên'),
        action: SnackBarAction(
            label: 'UNDO', onPressed: scaffold.hideCurrentSnackBar),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text("Thành viên nhóm"),
      ),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          decoration: const BoxDecoration(color: Colors.white),
          child: Column(
            children: [
              InkWell(
                onTap: () {
                  _showToast(context);
                },
                child: Container(
                  margin: const EdgeInsets.only(bottom: 16.0),
                  decoration: BoxDecoration(
                      border: Border.all(width: 0.5),
                      borderRadius: BorderRadius.circular(8.0)),
                  child: Row(
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.copy_all_outlined)),
                      const Text("Thêm thành viên",
                          style: TextStyle(
                              fontSize: 16.0, fontWeight: FontWeight.bold))
                    ],
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SizedBox(
                        height: 70.0,
                        child: Image.asset("assets/images/img_5.png"),
                      ),
                      const SizedBox(width: 20.0),
                      const Text(
                        "Nguyễn Văn A",
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 20.0,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SizedBox(
                        height: 70.0,
                        child: Image.asset("assets/images/img_2.png"),
                      ),
                      const SizedBox(width: 20.0),
                      const Text(
                        "Nguyễn Văn B",
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 20.0,
                        ),
                      ),
                    ],
                  ),
                  IconButton(
                    onPressed: () {
                      _displayTextInputDialog(context);
                    },
                    icon: const Icon(Icons.cancel),
                    color: Colors.red[700],
                  ),
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SizedBox(
                        height: 70.0,
                        child: Image.asset("assets/images/img_3.png"),
                      ),
                      const SizedBox(width: 20.0),
                      const Text(
                        "Nguyễn Thị D",
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 20.0,
                        ),
                      ),
                    ],
                  ),
                  IconButton(
                    onPressed: () {
                      _displayTextInputDialog(context);
                    },
                    icon: const Icon(Icons.cancel),
                    color: Colors.red[700],
                  ),
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SizedBox(
                        height: 70.0,
                        child: Image.asset("assets/images/img_4.png"),
                      ),
                      const SizedBox(width: 20.0),
                      const Text(
                        "Nguyễn Nguyễn",
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 20.0,
                        ),
                      ),
                    ],
                  ),
                  IconButton(
                    onPressed: () {
                      _displayTextInputDialog(context);
                    },
                    icon: const Icon(Icons.cancel),
                    color: Colors.red[700],
                  ),
                ],
              ),
              const SizedBox(
                height: 24.0,
              ),
              const Divider(
                height: 5.0,
              )
            ],
          ),
        ),
      ),
    );
  }
}
