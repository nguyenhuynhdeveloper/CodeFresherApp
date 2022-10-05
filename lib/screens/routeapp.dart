import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fortune_telling/screens/bode_name.dart';
import 'package:fortune_telling/screens/bode_face.dart';
import 'package:fortune_telling/screens/confession.dart';
import 'package:fortune_telling/screens/home.dart';
import 'package:fortune_telling/screens/seen_photo.dart';
import 'package:fortune_telling/screens/take_photo/bloc/add_bloc.dart';
import './take_photo/take_photo_love.dart';
import './day_love.dart';

class MyRoutes extends StatelessWidget {
  const MyRoutes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/bode_name': (context) => BodeName(),
        '/bode_face': (context) => BodeFace(),
        '/confession': (context) => Confession(),
        '/day_love': (context) => DayLove(),
        '/take_photo_love': (context) => ProviderTakePhoto(),
        '/seen_photo': (context) => SeenPhoto()
      },
    );
  }
}
