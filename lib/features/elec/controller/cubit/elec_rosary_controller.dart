import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluuuuuuuuter/features/elec/controller/cubit/elec_rosary_states.dart';
import 'package:fluuuuuuuuter/features/elec/model/elec_model.dart';
import 'package:fluuuuuuuuter/features/elec/model/local_db.dart';

// ignore: camel_case_types
class elec_rosary_controller extends Cubit<elec_rosary_states> {
  late ConfettiController confettiController;
  elec_rosary_controller() : super(initialization_state()) {
    init();
    confettiController =
        ConfettiController(duration: const Duration(milliseconds: 800));
  }

  int counter = 0;
  increease() {
    counter++;
    emit(counter_increase());
  }

  reset() {
    counter = 0;
    emit(counter_reset());
  }

  List<ElecModel> users = [];
  Future<List<ElecModel>> init() async {
    users = await (await DatabaseRepo.instance).fetch();
    emit(UserLoading());
    return users;
  }

  add(BuildContext context) async {
    if (counter != 0) {
      await (await DatabaseRepo.instance).insert(number: counter);
      counter = 0;
      emit(Addstate());
      confettiController.play();
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Align(alignment: Alignment.center,
            child: Text(
                    'تهانينا!',
                    style: TextStyle(fontWeight: FontWeight.bold, color: Colors.green,fontSize: 30),
                  ),
          )));
    }else{
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Align(alignment: Alignment.center,
            child: Text(
                    'لا يمكن حفظ ريكورد خالى',
                    style: TextStyle(fontWeight: FontWeight.bold, color: Colors.green),
                  ),
          )));
    }
  }
}
