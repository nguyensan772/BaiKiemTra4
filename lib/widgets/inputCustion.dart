import 'package:flutter/material.dart';

class InputCustom extends StatefulWidget {
  final TextEditingController? controller ;
  final String hint ;
  final Widget? suffixIcon ;
  final bool obscureText;
  final TextInputType? textInputType;
  final String errorText;
  final Function(String)? onChanged;

  InputCustom({super.key, required this.hint, this.controller,this.suffixIcon,this.obscureText =false,this.textInputType,this.errorText="",this.onChanged});
  @override
  State<InputCustom> createState() => _InputCustomState();
}

class _InputCustomState extends State<InputCustom> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return 
      Column(
        children: [
          SizedBox(
              width: width,
              child:TextField(autofocus: false,onChanged: widget.onChanged, keyboardType: widget.textInputType ,controller: widget.controller,decoration: InputDecoration(

                  labelText: widget.hint,labelStyle: TextStyle(fontSize: 16,color: Color(0xFF555770),fontWeight: FontWeight.w400),
                  suffixIcon: widget.suffixIcon,focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color:Color(0xFFCBCBCB),width: 1)) ,enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color:Color(0xFFCBCBCB),width: 1))),obscureText: widget.obscureText,obscuringCharacter: "*",),
              )
          ,
          Row(children: [
            Text(widget.errorText,style: const TextStyle(color: Colors.red)),
            Spacer()
          ],  )
        ],

      )
      ;
  }
}
