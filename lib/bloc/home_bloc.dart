import 'dart:math';

import 'package:bloc_application/bloc/home_event.dart';
import 'package:bloc_application/bloc/home_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc()
      : super(ColorInit(
          Color.fromARGB(255, 0, 243, 49),
        )) {
    on((event, emit) {
      emit(
        ColorRepaint(
          Color(
            Random().nextInt(
              0xffffffff,
            ),
          ),
        ),
      );
    });
  }
}
