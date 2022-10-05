import 'package:flutter/material.dart';
import 'package:fortune_telling/screens/bode_name/models/name.dart';
import 'package:fortune_telling/screens/bode_name/widgets/name_list.dart';
import 'package:fortune_telling/widgets/text_feild.dart';

class BodeName extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _BodeName();
  }
}

class _BodeName extends State<BodeName> {
  final _NameFeMaleEditingControler = TextEditingController();
  final _NameMaleEditingControloer = TextEditingController();

  //Định nghĩa state
  Name name = Name(male: "", female: "");
  List<Name> names = <Name>[];

  void _insertName() {
    //validate Data
    if (name.female.isEmpty || name.male.isEmpty) {
      return;
    }

    names.add(name);

    //xoá dữ liệu TextField sau khi thêm mới Transaction
    name = Name(male: "", female: "");
    _NameFeMaleEditingControler.text = '';
    _NameMaleEditingControloer.text = '';

    // //khởi tạo 1 name mới với thông tin trống rỗng
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink[400],
        title: Text('Bói tên'),
      ),
      body: Container(
        color: Colors.black12,
        // height: 200,
        padding: EdgeInsets.fromLTRB(10, 50, 0, 0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                InputName(
                  onChange: (String a) => {
                    setState(() {
                      name.female = a;
                    })
                  },
                  labelText: 'name female',
                  hideText: 'name female',
                  NameFeMaleEditingControler: _NameFeMaleEditingControler,
                ),
                Container(
                    margin: EdgeInsets.all(5),
                    width: 35,
                    height: 35,
                    child: Image.asset(
                      "assets/heath.png",
                      fit: BoxFit.cover,
                      alignment: Alignment.center,
                    )),
                InputName(
                  onChange: (String b) => {
                    setState(() {
                      name.male = b;
                    })
                  },
                  labelText: 'name male',
                  hideText: 'name male',
                  NameFeMaleEditingControler: _NameMaleEditingControloer,
                ),
              ],
            ),
            Container(
              child: Text('${name.toString()}'),
            ),
            Container(
              width: 100,
              height: 40,
              margin: EdgeInsets.only(top: 50),
              // alignment: Alignment.bottomCenter,
              // color: Colors.amber,
              child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.pink[400]),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0))),
                  ),
                  onPressed: () {
                    setState(() {
                      this._insertName();
                    });
                  },
                  child: Text('ok')),
            ),
            SingleChildScrollView(child: NameList(names: names))
          ],
        ),
      ),
    );
  }
}
