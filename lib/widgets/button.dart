import '../common/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Button extends StatelessWidget {
  final String label;
  final onClick;
  final style;
  final String? type; //button type
  final bool? loading;
  Color? colorText;

  Button(
      {required this.label,
      required this.onClick,
      this.style,
      this.type,
      this.colorText,
      this.loading});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    switch (type) {
      case 'text':
        return TextButton(
          style: style ??
              TextButton.styleFrom(
                  primary: colorText ?? Colors.blue,
                  textStyle: AppTextStyle.black),
          onPressed: onClick,
          child: Text(label),
        );
      case 'outlined':
        return OutlinedButton(
          style: style ??
              OutlinedButton.styleFrom(
                  primary: Colors.blue, textStyle: AppTextStyle.black),
          onPressed: onClick,
          child: Text(label),
        );
      default:
        return ElevatedButton(
          style: style ??
              ElevatedButton.styleFrom(
                  primary: Colors.blue, textStyle: AppTextStyle.black),
          onPressed: onClick,
          child: (loading == null || loading == false)
              ? Text(label)
              : SizedBox(
                  width: 25.h,
                  height: 25.h,
                  child: const CircularProgressIndicator(),
                ),
        );
    }
  }
}
