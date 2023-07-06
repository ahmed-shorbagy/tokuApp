import 'package:flutter/material.dart';

class category extends StatelessWidget {
  category({this.text, this.color, this.tapped});
  String? text;
  Color? color;
  VoidCallback? tapped;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: tapped,
      child: Container(
        alignment: Alignment.centerLeft,
        padding: EdgeInsets.only(left: 16),
        height: 80,
        width: double.infinity,
        color: color,
        child: Text(
          text!,
          style: TextStyle(fontSize: 22, color: Colors.white),
        ),
      ),
    );
  }
}
