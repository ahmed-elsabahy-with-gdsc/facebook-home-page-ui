import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomDivider extends StatelessWidget {
  String txt;
  CustomDivider ({Key? key, required this.txt}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RotatedBox(
                                quarterTurns: 3,
                                child: Text(
                                  txt,
                                  style:
                                      const TextStyle(fontSize: 20, color: Colors.white),
                                ));
  }
}

