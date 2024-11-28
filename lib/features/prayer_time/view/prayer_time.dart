import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluuuuuuuuter/features/prayer_time/controller/cubit/prayer_cubit.dart';

class Prayer extends StatelessWidget {
  const Prayer({super.key});
  
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PrayerCubit, PrayerState>(
    
      builder: (context, state) {
        final  cubit = BlocProvider.of<PrayerCubit>(context);
        return Directionality(textDirection: TextDirection.ltr,
          child: Scaffold(
           backgroundColor: Colors.grey[200],
             body: Center(
               child: SingleChildScrollView(
                 child: Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Row( mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                           Text(
                           'Today,', 
                           style: TextStyle(color: Colors.brown,fontWeight: FontWeight.bold,fontSize: 30),
                         ),
                         Text(
                          cubit.prayerModel2?.date ?? '--/--/--',
                           style: const TextStyle(color: Colors.green,fontWeight: FontWeight.bold,fontSize: 30),
                         ),
                          
                       ],
                     ),
                     SizedBox(height: 15,),
                     _itemPrayer(textemoji: "🌙",textaladn:"fajr" ,texttime: cubit.prayerModel?.fajr),
                 _itemPrayer(textemoji: "🌤",textaladn: "shurooq",texttime:cubit.prayerModel?.shurooq ),
                 _itemPrayer(textemoji: "☀️",textaladn:"dhuhr" ,texttime:cubit.prayerModel?.dhuhr ),
                 _itemPrayer(textemoji: "☀️",textaladn:"asr" ,texttime:cubit.prayerModel?.asr ),
                 _itemPrayer(textemoji: "🌥",textaladn:"maghrib" ,texttime:cubit.prayerModel?.maghrib ),
                 _itemPrayer(textemoji: "🌒",textaladn: "isha",texttime: cubit.prayerModel?.isha),
                 
                   ],
                 ),
               ),
             )),
        );
      },
    );
    
  }
}

Widget _itemPrayer({
  required String textemoji,
  required String textaladn,
  required String? texttime,
}) {
  return Container(
    
    margin: EdgeInsets.only(bottom: 10,right: 15,left: 15),
    padding: EdgeInsets.symmetric(horizontal: 10),
    height: 70,
    // width: double.infinity,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(30),
      gradient: LinearGradient(
            colors: [Colors.brown,Color.fromARGB(255, 204, 177, 23) ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Text(
              textemoji,
              style: const TextStyle(
                  fontSize: 20, color: Color.fromARGB(255, 204, 177, 23)),
            ),
            Text(
              textaladn,
              style: const TextStyle(
                  fontSize: 27, color: Color.fromARGB(255, 204, 177, 23)),
            ),
          ],
        ),
        Text(
          texttime ?? '--:--',
          style: const TextStyle(fontSize: 20, color: Colors.brown),
        )
      ],
    ),
  );
}
