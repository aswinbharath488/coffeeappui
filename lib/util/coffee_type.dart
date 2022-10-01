// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class coffeetype extends StatelessWidget {
  final String cofeeType;
  final bool isselected;
  final VoidCallback ontap;

  coffeetype(
      {required this.cofeeType, required this.isselected, required this.ontap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 35),
      child: GestureDetector(
        onTap: ontap,
        child: Text(
          cofeeType,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: isselected ? Colors.orange : Colors.white,
          ),
        ),
      ),
    );
  }
}
