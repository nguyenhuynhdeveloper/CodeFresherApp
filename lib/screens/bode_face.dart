import 'dart:ffi';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:fortune_telling/widgets/choose_image.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';

class BodeFace extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _BodeFace();
  }
}

class _BodeFace extends State<BodeFace> {
  String? _imageMale;
  String? _imageFemale;
  bool isState = false;

  _setImageMale(data) {
    setState(() {
      _imageMale = data;
    });
  }

  _setImageFeMale(data) {
    setState(() {
      _imageFemale = data;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text('Bói mặt tình nhân'),
          backgroundColor: Colors.pink[400],
        ),
        body: Container(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // ChooseImage(onChoose: getImage);
                  ChooseImage(
                    onChoose: (data) => _setImageMale(data),
                    ImageUrl: _imageMale,
                    titleButton: 'Chọn ảnh',
                    titleImage: 'Ảnh bạn nữ',
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  ChooseImage(
                    onChoose: (data) => _setImageFeMale(data),
                    ImageUrl: _imageFemale,
                    titleButton: 'Chọn ảnh',
                    titleImage: 'Ảnh bạn name',
                  ),
                ],
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
                        if (_imageFemale != null && _imageMale != null) {
                          isState = true;
                        } else {
                          isState = false;
                        }
                      });
                    },
                    child: Text('ok')),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                child: Text(
                    isState ? "Hai bạn hợp nhau ${Random().nextInt(100)}%" : "",
                    style: TextStyle(
                      fontSize: 20,
                      // fontFamily: 'Dancing_Script',
                    )),
              )
            ],
          ),
        ));
  }
}
