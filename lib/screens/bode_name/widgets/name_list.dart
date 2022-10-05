import 'dart:math';

import 'package:flutter/material.dart';
import 'package:fortune_telling/screens/bode_name/models/name.dart';
import 'package:intl/intl.dart';

class NameList extends StatelessWidget {
  List<Name> names;
  NameList({Key? key, required this.names}) : super(key: key);

  ListView _buildListView() {
    return ListView.builder(
        itemCount: names.length,
        itemBuilder: (context, index) {
          return Container(
            child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                color: (index - 1) % 2 == 0
                    ? Color.fromARGB(255, 238, 138, 172)
                    : Color.fromARGB(255, 152, 143, 229),
                elevation: 10,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(10),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(padding: EdgeInsets.only(top: 10)),
                        Text(
                          names[index].male,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        // Padding(padding: EdgeInsets.only(bottom: 10)),
                        Container(
                            margin: EdgeInsets.all(5),
                            width: 35,
                            height: 35,
                            child: Image.asset(
                              "assets/heath.png",
                              fit: BoxFit.cover,
                              alignment: Alignment.center,
                            )),
                        Text(
                          '${names[index].female}',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                    Expanded(
                        child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                            padding: const EdgeInsets.all(10),
                            child: Text(
                                "Hai bạn hợp nhau ${Random().nextInt(100)}%")),
                        Padding(
                          padding: EdgeInsets.only(right: 10),
                        ),
                      ],
                    ))
                  ],
                )),
          );
        });
  }

  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Container(height: 500, child: _buildListView());
  }
}
