import 'package:flutter/material.dart';
import 'package:fortune_telling/defined/listConfession.dart';

class Confession extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _Confession();
  }
}

class _Confession extends State<Confession>{
  final List<DefinedConfession> data = <DefinedConfession>[
    DefinedConfession(1, 'title1', 'detail1'),
    DefinedConfession(2, 'title2', 'detail2'),
    DefinedConfession(3, 'title3', 'detail3'),
    DefinedConfession(4, 'title4', 'detail4'),
    DefinedConfession(5, 'title5', 'detail5')
  ];
  final List data1 = [
    {'id':1},
    {'id':2},
    {'id':3},
  ];
  @override
  Widget build(BuildContext context) {
  // TODO: implement build
  // print(data);
  //  print(data.toString());
  data1.forEach((element) {
    print(element['id']);
  });
   data.forEach((element) {
     print(element.detail);
   });
    return(
      Scaffold(
        appBar: AppBar(
          title: Text("Confession"),
          backgroundColor: Colors.pink[400],
        ),
        body: Container(
        child: Center(child: Text('abc')),
      ),
      )
    );
  }
}