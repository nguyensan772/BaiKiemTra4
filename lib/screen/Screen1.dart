import 'package:bai_kiem_tra_thuc_tap_4/screen/Screen2.dart';
import 'package:bai_kiem_tra_thuc_tap_4/widgets/ButtonCustom.dart';
import 'package:bai_kiem_tra_thuc_tap_4/widgets/inputCustion.dart';
import 'package:bai_kiem_tra_thuc_tap_4/widgets/textCustom.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  bool isVisible = true ;
  @override
  Widget build(BuildContext context) {
    double  width = MediaQuery.of(context).size.width;

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        body:  SingleChildScrollView(
          child: Padding(padding: const EdgeInsets.only(bottom: 16),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(30),
                  width: width,
                  height: 250,
                  decoration: const BoxDecoration(image: DecorationImage(image: AssetImage("assets/background_signup.png"),fit: BoxFit.cover)),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Spacer(),
                      Image(image: AssetImage("assets/logo.png"),width: 42,),
                      SizedBox(height: 20),
                      TextCustom(text: "Chào mừng bạn mới", color: Color(0xFFAE1730),fontSize: 22,fontWeight: FontWeight.w400,),
                      SizedBox(height: 20),
                      TextCustom(text: "Đăng ký tài khoản", color: Color(0xFFAE1730),fontSize: 32,fontWeight: FontWeight.w600,)

                    ],
                  ),
                ),
                const SizedBox(height: 20,),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      const InputCustom(hint: "Họ và tên",),
                      const InputCustom(hint: "Email của bạn",),
                      InputCustom(hint: "Số điện thoại",
                        inputFormatters: [
                          FilteringTextInputFormatter.allow(RegExp("[0-9]"))
                        ],

                        textInputType: const TextInputType.numberWithOptions(),),
                      InputCustom(hint: "Mật khẩu",suffixIcon: IconButton(onPressed: () {
                         setState(() {
                           isVisible = !isVisible;
                         });
                      }, icon: isVisible ? const Icon(FontAwesomeIcons.eye,size: 24,color: Color(0xFFa8adae)) :  const Icon(FontAwesomeIcons.eyeSlash,size: 24,color: Color(0xFFa8adae),)),obscureText: isVisible,),
                      InputCustom(hint: "Nhập lại mật khẩu",suffixIcon: IconButton(onPressed: () {
                        setState(() {
                          isVisible = !isVisible;
                        });
                      }, icon: isVisible ?  const Icon(FontAwesomeIcons.eye,size: 24,color: Color(0xFFa8adae)) : const Icon(FontAwesomeIcons.eyeSlash,size: 24,color: Color(0xFFa8adae),)),obscureText: isVisible,),
                      const SizedBox(height: 30,),

                      Buttoncustom(text: "Đăng ký", onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => Screen2(),));
                      },),
                      const SizedBox(height: 10,),
                      RichText(text: const TextSpan(children:
                        [
                          TextSpan(text: "Đã có tài khoản ? ",style: TextStyle(color: Color(0xFF555770),fontSize: 14,fontWeight: FontWeight.w500)),
                          TextSpan(text: "Đăng nhập",style: TextStyle(color: Color(0xFFAE1730),fontSize: 14,fontWeight: FontWeight.w500))
                        ]
                      ))
                    ],
                  ),
                )
              ],
            ),
          ),
        )
      ),
    );
  }
}
