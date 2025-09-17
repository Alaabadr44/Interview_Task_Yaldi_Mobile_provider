// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';

class NavigationBarController extends Cubit<int> {
  NavigationBarController({int index = 0}) : super(index);
  int currentIndex = 0;

  static NavigationBarController of(BuildContext context) => BlocProvider.of(context);

  setIndex(int newIndex) {
    currentIndex = newIndex;
    emit(currentIndex);
  }
}
