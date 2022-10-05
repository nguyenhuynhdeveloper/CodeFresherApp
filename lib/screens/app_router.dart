import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fortune_telling/screens/take_photo/bloc/add_bloc.dart';
import 'package:fortune_telling/screens/take_photo/take_photo_love.dart';

class AppRouter {
  Route? onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case '/take_photo_love':
        return MaterialPageRoute(
          builder: (context) => BlocProvider.value(
            value: AddCustomermBloc(),
            child: TakePhotoLove(),
          ),
        );
    }
  }
}
