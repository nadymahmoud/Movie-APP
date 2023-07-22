
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:movie_app/widget/background.dart';
import 'package:movie_app/widget/primary_button.dart';

import '../controller/auth_controller.dart';

class LoginInput extends StatefulWidget{
  LoginInput({Key? key , required this.type}): super(key: key);
 String type ;
  @override
  State<LoginInput> createState() => _LoginInputState();
}

class _LoginInputState extends State<LoginInput> {
  bool showPass = true ;
  final emailC = TextEditingController();
  final passC = TextEditingController();
    final authController = Get.find<AuthController>();


 @override
  void initState() {
    Future.delayed(const Duration(microseconds: 1), () {
      setState(() {
        showPass = true;
      });
    });
    super.initState();
  }
  @override
  void dispose() {
    emailC.dispose();
    passC.dispose();
    super.dispose();
  }
@override
  Widget build(BuildContext context) {
    final ScreanWidth = MediaQuery.of(context).size.width;
        final ScreanHeight = MediaQuery.of(context).size.height;
 return  Scaffold(
extendBodyBehindAppBar: true,
appBar: AppBar(centerTitle: true,
leading: IconButton(onPressed:() => Get.back(),  icon: const Icon(Icons.arrow_back_ios_rounded,color: Colors.white,)),
title: Text(widget.type , style: GoogleFonts.nunito(
  color: Colors.white , fontSize: 24, fontWeight: FontWeight.w500),),
  backgroundColor: Colors.transparent,
  elevation: 0,
),
body: GestureDetector(
  onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
  child: Stack(
    children: [
      const Background(),
      SizedBox(
        width: ScreanHeight,
        height: ScreanHeight,
        child: Column(
          children: [
            SizedBox(
              height: ScreanHeight * .2 , ),
            Text("Hi , Have a nice day " , style: GoogleFonts.nunito(color: Colors.grey[300],
             fontSize: 18 , fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height:15 , ),
            Text("Welcome back! , Please enter your details" , style: GoogleFonts.nunito(color: Colors.grey[300],
             fontSize: 17 , ),
             
            ),
            const SizedBox(
              height:50 ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Email Address" , style: GoogleFonts.nunito(color: Colors.grey, fontSize: 14),),
                      Container(
                        width: ScreanWidth * .8,
                        height: 50,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          border: GradientBoxBorder(gradient: LinearGradient(colors: [
                            Color.fromRGBO(210, 32, 60, 1),
                            Color.fromRGBO(210, 32, 60, 1),
                          ]))),
                          child: const TextField(
                            style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            
                            ),
                          ),
                      ),
                ],
              ),
              const SizedBox(height: 20,),
               Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Password" , style: GoogleFonts.nunito(color: Colors.grey, fontSize: 14),),
                      Container(
                        width: ScreanWidth * .8,
                        height: 50,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          border: GradientBoxBorder(gradient: LinearGradient(colors: [
                            Color.fromRGBO(210, 32, 60, 1),
                            Color.fromRGBO(210, 32, 60, 1),
                          ]))),
                          child: TextField(
                            style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          
                            ),
                            decoration: InputDecoration(
                              suffixIcon: IconButton(onPressed: () {},icon: Icon( showPass? Icons.visibility : Icons.visibility_off , color: Colors.grey,)
                    ,),
                            ),
                            ),
                          ),
                    ],
                  ),
                  TextButton(onPressed:() {},
                  
                   child: const Text("Forget Password"),
                   ),
                   const SizedBox(height: 20,),
                   GestureDetector(onTap :() {
                    if (widget.type == 'Login'){
                      authController.login(emailC.text, passC.text);
                    }else{
                                            authController.signUp(emailC.text, passC.text);

                    }
                   }
                   , child: PramiryBotton(title: "Login in", width: ScreanWidth * .8, height: 50),)
                ],
              ),
          ],
              ),
              ],
        ),
    
      ),
    ],
  ),
),
 
 );
  }
}