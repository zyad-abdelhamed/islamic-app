import 'package:flutter/material.dart';
import 'package:fluuuuuuuuter/features/elec/view/component/body_elec_rosary.dart';

// ignore: camel_case_types
class elec_rosary_page extends StatelessWidget {
  const elec_rosary_page({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      body: body_elec_rosary(),
     /* appBar: AppBar(
        backgroundColor:const Color.fromARGB(255, 216, 189, 105),
        title: const Text('السبحه الإلكترونية',style: TextStyle(color: Colors.brown,fontSize: 30),),
        centerTitle: true,
        shape: const BeveledRectangleBorder(borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(70),
          topRight: Radius.circular(70),
         // bottomRight: Radius.circular(20),
         // topLeft: Radius.circular(50)
          )),
      ),*/
    );
  }
}