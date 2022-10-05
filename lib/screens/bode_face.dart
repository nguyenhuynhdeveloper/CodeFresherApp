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
          title: Text('Image Picker Example'),
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
            ],
          ),
        ));
  }
}
