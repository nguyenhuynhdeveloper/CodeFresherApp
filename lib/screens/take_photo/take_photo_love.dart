import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fortune_telling/screens/take_photo/bloc/add_bloc.dart';
import 'package:fortune_telling/screens/take_photo/widgets/take_photo.dart';

class TakePhotoLove extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _TakePhotoLoveState();
  }
}

class _TakePhotoLoveState extends State<TakePhotoLove> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          resizeToAvoidBottomInset: true,
          appBar: AppBar(
            title: Text("Chụp ảnh cùng"),
            backgroundColor: Colors.pink[400],
          ),
          body: Container(height: 200, child: TakePhoto())),
    );
  }
}

class ProviderTakePhoto extends StatelessWidget {
  ProviderTakePhoto({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AddCustomermBloc>(
      lazy: false,
      create: (_) => AddCustomermBloc(),
      child: TakePhotoLove(),
    );
  }
}
