import 'package:flutter/material.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';

// định nghĩa kiểu function trả về
typedef BodeFaceCallBack = void Function(String);

class ChooseImage extends StatelessWidget {
  final String? titleButton;
  final String? titleImage;
  final String? ImageUrl;
  final BodeFaceCallBack onChoose;
  final picker = ImagePicker();
  ChooseImage({
    required this.onChoose,
    this.ImageUrl,
    this.titleButton,
    this.titleImage,
  });

  Future getImage() async {
    print(ImageUrl);
    final pickedFile = await picker.getImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      print(pickedFile.path.runtimeType);
      onChoose(pickedFile.path);
      // _image = File(pickedFile.path);
    } else {
      print('not picked image');
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return (Container(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 50),
            width: 150,
            height: 150,
            color: Colors.amber,
            child: ImageUrl == null
                ? Center(child: Text(titleImage!))
                : Image.file(
                  File(ImageUrl!),
                  fit: BoxFit.cover,
                  ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: 100,
            height: 40,
            child: MaterialButton(
              // shape: ShapeBorder(),
              color: Colors.pink[400],
              child: Text(titleButton!,style: TextStyle(color: Colors.white,fontSize: 13),), 
              onPressed: getImage),
          )
        ],
      ),
    ));
  }
}
