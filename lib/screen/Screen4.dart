import 'package:bai_kiem_tra_thuc_tap_4/screen/Screen5.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

import '../widgets/ButtonCustom.dart';
import '../widgets/circleIcons.dart';
import '../widgets/textCustom.dart';

class Screen4 extends StatefulWidget {
  const Screen4({super.key});

  @override
  State<Screen4> createState() => _Screen4State();
}

class _Screen4State extends State<Screen4> {


  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(

        body:
        Padding(padding: const EdgeInsets.only(top: 30,left: 20,right: 20,bottom: 16),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 39,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Positioned(left: 0,child: InkWell(onTap: () {
                        Navigator.pop(context);
                      },child: CircleIcon(icon: Icons.arrow_back))),
                      const Center(child: TextCustom(text: "Xác thực OTP", color: Colors.black,fontWeight: FontWeight.w500,fontSize: 16,)),
                    ],
                  ),
                ),
                const SizedBox(height: 40,),
            
                Container(
                  padding: const EdgeInsets.only(top: 40,left: 20,right: 20,bottom: 10),
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.88),boxShadow: const [
            
                    BoxShadow(
                      color: Color(0x33A7A7A7),
                      blurRadius: 45.32,
                      offset: Offset(0, 18.13),
                      blurStyle: BlurStyle.outer
            
                    )
                  ]),
            
                  child: Column(children: [
                    const TextCustom(text: "Một mã xác thực đã được gửi tới sđt:", color: Color(0xFF28293D),fontSize: 16,),
                    const SizedBox(height: 10,),
                    const TextCustom(text: '+84868666888', color: Color(0xFFAE1730),fontSize: 16, fontWeight: FontWeight.w600,),
                    const SizedBox(height: 20,),
            
                    Pinput(
            
            
                      length: 4,
                      defaultPinTheme: PinTheme(
                        width:36,
                        height: 48,
            
                        decoration: BoxDecoration(border: Border.all(color: const Color(0xFFE3E3E3)),borderRadius: BorderRadius.circular(8))
                        ,textStyle: const TextStyle(
            
                        decoration: TextDecoration.underline,
                        decorationColor: Color(0xFF2F80ED),
                        fontWeight: FontWeight.bold,
                        fontSize: 20
                      ),
                      ),
            
                    )
                  ],),
                ),
            
                const SizedBox(height: 40,),
                RichText(text: const TextSpan(children: [
                  TextSpan(text: "Gửi lại OTP   ",style: TextStyle(fontSize: 16 ,color: Color(0xFFAE1730),fontWeight: FontWeight.bold )),
                  TextSpan(text: "1:59",style: TextStyle(fontSize: 16 ,color: Color(0xFFAE1730),))
            
                ])),
                const SizedBox(height: 40,),
                Buttoncustom(text: "Lấy mã xác nhận", onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const Screen5(),));
            
                },)
            
            
              ],
            ),
          ),
        ),

      ),
    );
  }
}
