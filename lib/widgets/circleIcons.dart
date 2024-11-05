import 'package:flutter/material.dart';

class CircleIcon extends StatelessWidget{
  IconData icon ;


  CircleIcon({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return  Container(width: 39,height: 39, decoration: BoxDecoration(borderRadius: BorderRadius.circular(100),border: Border.all(color: Color(0xFF6a6c7f),width: 1)),child: Icon(icon,size: 30,color: Color(0xFF6a6c7f),))
    ;

  }

}