import 'package:flutter/material.dart';
import 'dart:math';

import 'package:fortune_telling/screens/bode_name/models/name.dart';
import 'package:intl/intl.dart';

class Confession {
  String poem;
  Confession({required this.poem});
}

class ConfessionList extends StatelessWidget {
  List<Confession> confessions;
  ConfessionList({Key? key, required this.confessions}) : super(key: key);

  ListView _buildListView() {
    return ListView.builder(
        itemCount: confessions.length,
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
                        Container(
                          height: 70,
                          child: Center(
                            child: Text(
                              overflow: TextOverflow.clip,
                              maxLines: 3,
                              confessions[index].poem,
                              style: TextStyle(
                                  fontSize: 24,
                                  // fontWeight: FontWeight.bold,
                                  fontFamily: 'Passions_Conflict'),
                            ),
                          ),
                        ),
                        // Padding(padding: EdgeInsets.only(bottom: 10)),
                      ],
                    ),
                  ],
                )),
          );
        });
  }

  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height * 0.8,
        child: _buildListView());
  }
}
