import 'package:flutter/material.dart';
import 'package:fortune_telling/defined/listConfession.dart';
import 'package:fortune_telling/screens/confession/widgets/confession_list.dart';

class ConfessionPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ConfessionPage();
  }
}

class _ConfessionPage extends State<ConfessionPage> {
  List<Confession> confessions = <Confession>[
    Confession(poem: 'Nếu như mình gặp nhau sớm hơn Nỗi cô đơn sẽ không còn'),
    Confession(poem: 'Anh có thể thấy cả bầu trời sao trong đôi mắt em'),
    Confession(poem: 'Càng ngày em càng xinh trong mắt anh'),
    Confession(poem: 'Chân lý cuối cùng trên cõi đời vẫn chỉ là tình yêu. '),
    Confession(poem: 'Yêu là sống và còn sống là còn yêu. Anh yêu em.'),
    Confession(poem: 'Anh biết, anh chỉ là anh, em cũng chỉ là em thôi'),
    Confession(poem: 'Anh có thể không có gì nhưng không thể không có em.'),
    Confession(poem: ' Anh chỉ có một tình yêu duy nhất.'),
    Confession(poem: 'Thật nhẹ nhàng ấm áp. Thật nồng nàn say đắm.'),
    Confession(poem: 'Ở bên anh, dù làm gì, hay nơi đâu, cũng đều tốt cả.'),
    Confession(poem: 'Cám ơn trời đã cho anh gặp em'),
    Confession(poem: 'Cám ơn em đã cho anh tình yêu. Anh yêu em'),
    Confession(poem: 'Yêu em chính là mệnh lệnh của trái tim anh.'),
    Confession(poem: 'Em à, Em đã đánh cắp trái tim anh.'),
    Confession(poem: 'Vì thế anh sẽ đánh cắp nụ hôn của em'),
  ];
  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      appBar: AppBar(
        title: Text("Confession"),
        backgroundColor: Colors.pink[400],
      ),
      body: Container(
        child: RefreshIndicator(
          color: Colors.red,
          backgroundColor: Colors.yellow,
          strokeWidth: 4.0,
          onRefresh: () async {
            return Future<void>.delayed(const Duration(seconds: 3));
          },
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  child: Center(
                      child: Text(
                    'Hãy chọn một lời tỏ tình',
                    style: TextStyle(
                        fontFamily: 'Passions_Conflict', fontSize: 30),
                  )),
                ),
                ConfessionList(
                  confessions: confessions,
                )
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
