import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluuuuuuuuter/core/supplications_buttons.dart';

class Body_buttons extends StatelessWidget {
  const Body_buttons({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: GridView(gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,crossAxisSpacing: 40,mainAxisSpacing: 40,),
      
      children: [ 
        Supplications_buttons(
          icon: const Icon(
            Icons.sunny,
            color: Colors.brown,
            size: 80,
          ),
          fun: () {Navigator.pushNamed(context, 'morning');},
          
          text: 'أذكار الصباح',
        ),
        Supplications_buttons(
          icon: const Icon(
            Icons.nightlight,
            color: Colors.brown,
            size: 80,
          ),
          fun: () {Navigator.pushNamed(context, 'night');},
          
          text: 'أذكار المساء',
        ),
        Supplications_buttons(
          icon: const Icon(
            Icons.bed_outlined,
            color: Colors.brown,
            size: 80,
          ),
          fun: () {Navigator.pushNamed(context, 'sleep');},
         
          text: 'أذكار النوم',
        ),
        Supplications_buttons(
          icon: const Icon(
            Icons.mosque,
            color: Colors.brown,
            size: 80,
          ),
          fun: () {Navigator.pushNamed(context, 'mosqe');},
          
          text: 'أذكار المسجد',
        ),
        Supplications_buttons(
          icon: const Icon(
            Icons.coffee,
            color: Colors.brown,
            size: 80,
          ),
          fun: () {Navigator.pushNamed(context, 'wakeup');},
         
          text: 'أذكار الاستيقاظ',
        ),
        Supplications_buttons(
          icon: const Icon(
            Icons.menu_book,
            color: Colors.brown,
            size: 80,
          ),
          fun: () {Navigator.pushNamed(context, 'khtm');},
         
          text: 'ختم القران',
        )],
      ),
    );

  }
}
