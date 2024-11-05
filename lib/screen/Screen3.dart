import 'package:bai_kiem_tra_thuc_tap_4/screen/Screen4.dart';
import 'package:bai_kiem_tra_thuc_tap_4/widgets/ButtonCustom.dart';
import 'package:bai_kiem_tra_thuc_tap_4/widgets/circleIcons.dart';
import 'package:bai_kiem_tra_thuc_tap_4/widgets/inputCustion.dart';
import 'package:bai_kiem_tra_thuc_tap_4/widgets/textCustom.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Screen3 extends StatefulWidget {
  const Screen3({super.key});

  @override
  State<Screen3> createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {
  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
          body:
            Padding(padding: EdgeInsets.only(top: 30,left: 20,right: 20),
              child: Column(
                children: [
                  Container(
                    height: 39,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Positioned(left: 0,child: CircleIcon(icon: Icons.arrow_back)),
                        Center(child: TextCustom(text: "Quên mật khẩu", color: Colors.black,fontWeight: FontWeight.w500,fontSize: 16,)),
                      ],
                    ),
                  ),
                  const SizedBox(height: 40,),
                  const Image(image: AssetImage("assets/logo.png"),width: 42,height: 56.9,),
                  RichText(text: const TextSpan(children: [
                    TextSpan(text: "My",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 20)),
                    TextSpan(text: "Chair",style: TextStyle(color: Color(0xFFAE1730),fontWeight: FontWeight.w600,fontSize: 20)),

                  ]))
                  ,const SizedBox(height: 40,),

                  InputCustom(hint: "Nhập số điện thoại"),

                  Buttoncustom(text: "Lấy mã xác nhận", onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Screen4(),));
                  },)


                ],
              ),
            ),

      ),
    );
  }
}
