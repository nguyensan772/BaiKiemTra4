import 'package:bai_kiem_tra_thuc_tap_4/screen/Screen4.dart';
import 'package:bai_kiem_tra_thuc_tap_4/widgets/ButtonCustom.dart';
import 'package:bai_kiem_tra_thuc_tap_4/widgets/circleIcons.dart';
import 'package:bai_kiem_tra_thuc_tap_4/widgets/inputCustion.dart';
import 'package:bai_kiem_tra_thuc_tap_4/widgets/textCustom.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
            Padding(padding: const EdgeInsets.only(top: 30,left: 20,right: 20),
              child: Padding(padding: const EdgeInsets.only(bottom: 16),
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
                            },child: const CircleIcon(icon: Icons.arrow_back))),
                            const Center(child: TextCustom(text: "Quên mật khẩu", color: Colors.black,fontWeight: FontWeight.w500,fontSize: 16,)),
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
                  
                      InputCustom(hint: "Nhập số điện thoại",textInputType: const TextInputType.numberWithOptions(),inputFormatters: [
                        FilteringTextInputFormatter.allow(RegExp("[0-9]"))
                      ],),
                  
                      Buttoncustom(text: "Lấy mã xác nhận", onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const Screen4(),));
                      },)
                  
                  
                    ],
                  ),
                ),
              ),
            ),

      ),
    );
  }
}
