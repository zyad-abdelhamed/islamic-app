import 'package:flutter/material.dart';
import 'package:fluuuuuuuuter/features/supplications/supplications/view/component/body_night.dart';

class Night_page extends StatelessWidget {
  const Night_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(textDirection: TextDirection.rtl,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor:Color.fromARGB(255, 190, 145, 10),
            title: Text("أذكار المساء",style: TextStyle(color: Colors.brown),),
            centerTitle: true,
            shape: BeveledRectangleBorder(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(100),
                    bottomRight: Radius.circular(100))),
          ),
          body: Body_night(),
        ),
      ),
    );
  }
}
