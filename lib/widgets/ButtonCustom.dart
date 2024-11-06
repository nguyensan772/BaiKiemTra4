import 'package:bai_kiem_tra_thuc_tap_4/widgets/textCustom.dart';
import 'package:flutter/material.dart';

class Buttoncustom extends StatelessWidget {
  final String text ;
  final Function() onTap ;
  const Buttoncustom({super.key, required this.text,required this.onTap});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: onTap,
      child: Container(
          width:  width,
          decoration: BoxDecoration(color: Color(0xFFAE1730),borderRadius: BorderRadius.circular(16)),
          child: Center(child: Padding(padding: EdgeInsets.all(20),child: TextCustom(text: text, color: Colors.white,fontSize: 18,fontWeight: FontWeight.w500,))),
      ),
    );
  }
}
