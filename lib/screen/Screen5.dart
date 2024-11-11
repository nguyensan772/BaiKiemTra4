import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../widgets/ButtonCustom.dart';
import '../widgets/inputCustion.dart';
import '../widgets/textCustom.dart';

class Screen5 extends StatefulWidget {
  const Screen5({super.key});

  @override
  State<Screen5> createState() => _Screen5State();
}

class _Screen5State extends State<Screen5> {

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
                    decoration: const BoxDecoration(image: DecorationImage(image: AssetImage("assets/background_signin.png"),fit: BoxFit.cover)),
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Spacer(),
                        Image(image: AssetImage("assets/logo.png"),width: 42,color: Colors.white,),

                        SizedBox(height: 20),
                        TextCustom(text: "Đặt lại mật khẩu", color: Colors.white,fontSize: 32,fontWeight: FontWeight.w600,)

                      ],
                    ),
                  ),
                  const SizedBox(height: 20,),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [


                        InputCustom(hint: "Mật khẩu",suffixIcon: IconButton(onPressed: () {
                          setState(() {
                            isVisible = !isVisible;
                          });
                        }, icon: isVisible ?  const Icon(FontAwesomeIcons.eye,size: 24,color: Color(0xFFa8adae)):const Icon(FontAwesomeIcons.eyeSlash,size: 24,color: Color(0xFFa8adae),)),obscureText: isVisible,),
                        InputCustom(hint: "Nhập lại mật khẩu mới",suffixIcon: IconButton(onPressed: () {
                          setState(() {
                            isVisible = !isVisible;
                          });
                        }, icon: isVisible ? const Icon(FontAwesomeIcons.eye,size: 24,color: Color(0xFFa8adae)): const Icon(FontAwesomeIcons.eyeSlash,size: 24,color: Color(0xFFa8adae),)),obscureText: isVisible,),

                        const SizedBox(height: 40,),


                        Buttoncustom(text: "Đăng nhập", onTap: () {

                        },),




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
