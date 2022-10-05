import 'package:flutter/material.dart';

// typedef định nghĩa một kiểu dữ liệu
typedef SCallback = void Function(String);

class InputName extends StatelessWidget {
  final String hideText;
  final String labelText;
  final SCallback onChange;
  const InputName({Key? key, required this.onChange, required this.hideText,required this.labelText})
      : super(key: key);

  _onChange(String s) {
    onChange(s);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return (Container(
      width: 130,
      // height: 80,
      child: Column(
        children: [
          TextField(
            // controller: _NameFeMaleEditingControler,
            onChanged: _onChange,
            style: TextStyle(fontSize: 15),
            decoration: InputDecoration(
                hintText: hideText,
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                contentPadding: EdgeInsets.all(10)),
          ),
          SizedBox(
            height: 5,
          ),
          Text(labelText)
        ],
      ),
    ));
  }
}
