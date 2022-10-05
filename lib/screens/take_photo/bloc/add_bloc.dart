import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'add_bloc.dart';
import 'add_custom_state.dart';

//initialize cubit
class AddCustomermBloc extends Cubit<AddCustomState> {
  AddCustomermBloc() : super(AddCustomState(fullName: ''));

  //when user choice take camera
  void onTakeCamera(dynamic imageXFile) {
    emit(state.copyWith(image: imageXFile));
  }
}
