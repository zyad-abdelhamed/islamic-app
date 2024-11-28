import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Supplications_buttons extends StatelessWidget {
  Supplications_buttons(
      {super.key, required this.icon, required this.fun, required this.text});
  final Function fun;

  String text;
  Icon icon;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => fun(),
      child: Container(
        width: 130,
        height: 130,
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  blurRadius: 6, color: Color.fromARGB(255, 184, 151, 4))
            ],
            color: Color.fromARGB(255, 194, 160, 7),
            borderRadius: BorderRadius.circular(50)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            icon,
            Text(
              text,
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w900,
                  color: Colors.brown),
            )
          ],
        ),
      ),
    );
  }
}
