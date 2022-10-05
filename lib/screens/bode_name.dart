import 'package:flutter/material.dart';
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink[400],
        title: Text('screen 1'),
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
                    onChange: (String a) => print("${a}"),
                    labelText: 'name female',
                    hideText: 'name female'),
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
                    onChange: (String b) => print('${b}'),
                    labelText: 'name male',
                    hideText: 'name male'),
              ],
            ),
            Container(
              width: 100,
              height: 40,
              margin: EdgeInsets.only(top: 200),
              // alignment: Alignment.bottomCenter,
              // color: Colors.amber,
              child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.pink[400]),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0))),
                  ),
                  onPressed: () => print('okokok'),
                  child: Text('ok')),
            ),
          ],
        ),
      ),
    );
  }
}
