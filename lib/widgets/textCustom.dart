import 'package:flutter/material.dart';

class TextCustom extends StatelessWidget {
  final String text;
  final double? fontSize ;
  final FontWeight? fontWeight;
  final TextAlign textAlign ;
  final Color color ;
  final TextOverflow? overflow;

  const TextCustom({super.key, required this.text, this.fontSize, this.fontWeight, this.textAlign = TextAlign.left,required this.color,this.overflow });

  @override
  Widget build(BuildContext context) {
      return Text(overflow: overflow,text,style: TextStyle(fontWeight: fontWeight , fontSize: fontSize, color: color ),textAlign: textAlign,);
  }


}