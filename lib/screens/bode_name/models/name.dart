import 'package:flutter/material.dart';

class Name {
  String male;
  String female;

  Name({required this.male, required this.female});

  //Để hiện thông tin của 1 đối tượng ta hiện từng trường 1 Or thực hiện phương thức toString()
  @override
  String toString() {
    return 'Bạn nam: $female , Bạn nữ: $male';
  }
}
