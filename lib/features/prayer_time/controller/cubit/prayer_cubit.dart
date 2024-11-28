
import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:fluuuuuuuuter/features/prayer_time/model/prayer_model.dart';
import 'package:meta/meta.dart';
import 'package:http/http.dart'as http;
import 'package:http/http.dart';
part 'prayer_state.dart';

class PrayerCubit extends Cubit<PrayerState> {
  PrayerCubit(BuildContext context) : super(PrayerInitial()){
    api();
   
  }
  
  
    PrayerModel? prayerModel;
        PrayerModel? prayerModel2;

    //////
  void api() async {
  Response response =await http.get(
 Uri.parse('https://api.aladhan.com/v1/timingsByCity/07-07-2024?city=cairo&country=egypt&method=8')
 );
 var responsebody= jsonDecode(response.body);
 if (responsebody['status']== 'OK'){
  prayerModel = PrayerModel.fromjson(data: responsebody['data']['timings']);
  prayerModel2= PrayerModel.extraData(extra: responsebody['data']['date']);

   emit(Prayersuccess());
 }
 
  
}
}
