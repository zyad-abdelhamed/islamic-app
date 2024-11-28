import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';


part 'bottombar_state.dart';

class BottombarCubit extends Cubit<BottombarState> {
  BottombarCubit() : super(BottombarInitial());
   int selectedTapIndex = 0;
  final PageController pageController = PageController();

  void onChangeTabIndex(int index) {
   
    selectedTapIndex = index;
    pageController.jumpToPage(selectedTapIndex);
    emit(change());
  }
}
