import 'package:flutter/material.dart';

extension responsive on BuildContext{
 double get hieght => MediaQuery.of(this).size.height;
 double get width => MediaQuery.of(this).size.width;
}