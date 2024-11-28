import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluuuuuuuuter/core/bottom_bar/view/page/bottombarpage.dart';
import 'package:fluuuuuuuuter/features/begain/begin.dart';
import 'package:fluuuuuuuuter/features/prayer_time/controller/cubit/prayer_cubit.dart';
import 'package:fluuuuuuuuter/features/supplications/supplications/controller/cubit/night_cubit.dart';
import 'package:fluuuuuuuuter/features/supplications/supplications/view/page/khtm.dart';
import 'package:fluuuuuuuuter/features/supplications/supplications/view/page/morning.dart';
import 'package:fluuuuuuuuter/features/supplications/supplications/view/page/mosqe.dart';
import 'package:fluuuuuuuuter/features/supplications/supplications/view/page/night_page.dart';
import 'package:fluuuuuuuuter/features/supplications/supplications/view/page/sleep.dart';
import 'package:fluuuuuuuuter/features/supplications/supplications/view/page/wakeup.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => NightCubit(),
        ),
         BlocProvider(
          create: (context) => PrayerCubit(context),
        ),
      ],
      child: MaterialApp(
        home: Begin(),
        debugShowCheckedModeBanner: false,
        routes: {
          'morning': (context) => Morning(),
          'sleep': (context) => Sleep(),
          'wakeup': (context) => Wakeup(),
          'mosqe': (context) => Mosqe(),
          'khtm': (context) => khtm(),
          'night': (context) => Night_page(),
          'bottombar':(context) => bottomNavigationBar()
        },
      ),
    );
  }
}
