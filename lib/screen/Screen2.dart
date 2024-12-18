import 'package:bai_kiem_tra_thuc_tap_4/screen/Screen3.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../widgets/ButtonCustom.dart';
import '../widgets/inputCustion.dart';
import '../widgets/textCustom.dart';

class Screen2 extends StatefulWidget {
  const Screen2({super.key});

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {



  bool isVisible = true ;
  bool isChecked = false;
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
                    decoration: const BoxDecoration(image: DecorationImage(image: AssetImage("assets/background_signin.png"),fit: BoxFit.cover)),
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Spacer(),
                        Image(image: AssetImage("assets/logo.png"),width: 42,color: Colors.white,),
                        SizedBox(height: 20),
                        TextCustom(text: "Chào mừng quay lại", color: Colors.white,fontSize: 22,fontWeight: FontWeight.w400,),
                        SizedBox(height: 20),
                        TextCustom(text: "Đăng nhập", color: Colors.white,fontSize: 32,fontWeight: FontWeight.w600,)

                      ],
                    ),
                  ),
                  const SizedBox(height: 20,),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [
                        const InputCustom(hint: "Họ và tên",),

                        InputCustom(hint: "Mật khẩu",suffixIcon: IconButton(onPressed: () {
                          setState(() {
                            isVisible = !isVisible;
                          });
                        }, icon: isVisible ? const Icon(FontAwesomeIcons.eye,size: 24,color: Color(0xFFa8adae)):  const Icon(FontAwesomeIcons.eyeSlash,size: 24,color: Color(0xFFa8adae),)),obscureText: isVisible,),

                        const SizedBox(height: 20,),
                        Row(
                          children: [

                            InkWell(onTap: () {
                              setState(() {
                                isChecked = !isChecked;
                              });
                            }, child: Icon(isChecked ? FontAwesomeIcons.squareCheck: FontAwesomeIcons.square ,color: const Color(0xFF8F90A6),) ),

                              const SizedBox(width: 5,),
                              const TextCustom(text: "Nhớ đăng nhập", color: Color(0xFF555770), fontSize: 16,),
                              const Spacer(),
                              const Text("Quên mật khẩu?",style: TextStyle(color: Color(0xFF555770), fontSize: 16,decoration: TextDecoration.underline),)
                          ],
                        ),
                        const SizedBox(height: 30,),

                        Buttoncustom(text: "Đăng nhập", onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => const Screen3(),));
                        },),
                        const SizedBox(height: 5,),
                        const TextCustom(text: "Hoặc", color: Color(0xFF555770)),
                        const SizedBox(height: 5,),

                        InkWell(

                          child: Container(
                            width:  width,
                            decoration: BoxDecoration(color: const Color(0xFFF2DEDE),borderRadius: BorderRadius.circular(16)),
                            child: const Center(child: Padding(padding: EdgeInsets.all(20),child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image(image: AssetImage("assets/google_logo.png"),width: 28,height: 28,),
                                SizedBox(width: 10,),
                                TextCustom(text: "Đăng nhập bằng google", color: Colors.black,fontSize: 16,fontWeight: FontWeight.w500,)
                              ],
                            ))),
                          ),
                        ),
                        const SizedBox(height: 20,),
                        RichText(text: const TextSpan(children:
                        [
                          TextSpan(text: "Chưa có tài khoản ? ",style: TextStyle(color: Color(0xFF555770),fontSize: 14,fontWeight: FontWeight.w500)),
                          TextSpan(text: "Đăng ký",style: TextStyle(color: Color(0xFFAE1730),fontSize: 14,fontWeight: FontWeight.w500))
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
